CLASS zcl_27_eagm_credit_cart DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_card_num IMPORTING iv_cred_card TYPE string,
      get_card_num RETURNING VALUE(rv_cred_card) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        credit_card_number TYPE string.
ENDCLASS.



CLASS ZCL_27_EAGM_CREDIT_CART IMPLEMENTATION.


  METHOD get_card_num.
    rv_cred_card = me->credit_card_number.
  ENDMETHOD.


  METHOD set_card_num.
    me->credit_card_number = iv_cred_card.
  ENDMETHOD.
ENDCLASS.
