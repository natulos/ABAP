CLASS zcl_50_eagm_atm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      withdraw_money IMPORTING iv_card            TYPE string
                               iv_amount          TYPE i
                               iv_savings_account TYPE abap_bool OPTIONAL
                     RETURNING VALUE(rv_log)      TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_50_eagm_atm IMPLEMENTATION.

  METHOD withdraw_money.

    DATA(lo_bank) = NEW zcl_49_eagm_bank(  ).

    TRY.
        lo_bank->validate_account(
          EXPORTING
            iv_card            = iv_card
            iv_amount          =  iv_amount
            iv_savings_account = iv_savings_account
          CHANGING
            cv_log             = rv_log ).

        rv_log = |{ rv_log }... Withdraw money from the ATM { cl_abap_char_utilities=>newline }|.
        rv_log = |{ rv_log }... Operation completed successfully { cl_abap_char_utilities=>newline }|.

      CATCH zcx_47_eagm_expired_card INTO DATA(lx_expired_card).
        rv_log = |{ rv_log }... { lx_expired_card->get_text( ) } { cl_abap_char_utilities=>newline }|.

      CATCH BEFORE UNWIND zcx_48_eagm_insuffi_balance INTO DATA(lx_insufficient_balance).
        rv_log = |{ rv_log }... { lx_insufficient_balance->get_text( ) } { cl_abap_char_utilities=>newline }|.

        IF lx_insufficient_balance->is_resumable = abap_true.
          "Withdraw money from savings account
          rv_log = |{ rv_log }... Resume Exception { cl_abap_char_utilities=>newline }|.
          RESUME.
        ELSE.
          "Insufficient balance on the savings account
        ENDIF.
    ENDTRY.
  ENDMETHOD.

ENDCLASS.
