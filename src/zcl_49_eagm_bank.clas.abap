CLASS zcl_49_eagm_bank DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      validate_Account IMPORTING iv_card            TYPE string
                                 iv_amount          TYPE i
                                 iv_savings_account TYPE abap_bool OPTIONAL
                       CHANGING  cv_log             TYPE string
                       RAISING   zcx_47_eagm_expired_card RESUMABLE(zcx_48_eagm_insuffi_balance).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_49_eagm_bank IMPLEMENTATION.

  METHOD validate_account.
    cv_log = |{ cv_log }... Checking card validity { cl_abap_char_utilities=>newline }|.

    IF iv_card = '1111 2222 3333 4444'.
      RAISE EXCEPTION TYPE zcx_47_eagm_expired_card
        EXPORTING
          textid = zcx_47_eagm_expired_card=>card_expired.
    ENDIF.

    cv_log = |{ cv_log }... Checking account balance { cl_abap_char_utilities=>newline }|.

    IF iv_amount > 50.
      IF iv_savings_account = abap_true.
        cv_log = |{ cv_log }... Resumable exception Insufficient Balance { cl_abap_char_utilities=>newline }|.
        RAISE RESUMABLE EXCEPTION TYPE zcx_48_eagm_insuffi_balance
          EXPORTING
            textid = zcx_48_eagm_insuffi_balance=>insufficient_balance.
      ELSE.
        cv_log = |{ cv_log }... Exception insufficient Balance { cl_abap_char_utilities=>newline }|.
        RAISE EXCEPTION TYPE zcx_48_eagm_insuffi_balance
          EXPORTING
            textid = zcx_48_eagm_insuffi_balance=>insufficient_balance.
      ENDIF.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
