CLASS zcl_28_eagm_client DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_credit_card IMPORTING ir_credit_card TYPE REF TO zcl_27_eagm_credit_cart,
      get_credit_card RETURNING VALUE(rv_credit_card) TYPE REF TO zcl_27_eagm_credit_cart.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        credit_cart TYPE REF TO zcl_27_eagm_credit_cart.
ENDCLASS.



CLASS ZCL_28_EAGM_CLIENT IMPLEMENTATION.


  METHOD set_credit_card.
    me->credit_cart = ir_credit_card.
  ENDMETHOD.


  METHOD get_credit_card.
    rv_credit_card = me->credit_cart.
  ENDMETHOD.
ENDCLASS.
