CLASS zcl_05_eagm_plant DEFINITION INHERITING FROM zcl_04_eagm_company
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA:
      products    TYPE string READ-ONLY,
      company_atr TYPE string.

    METHODS:
        set_company_code  REDEFINITION.


    METHODS:
      constructor       IMPORTING iv_quoatation TYPE string
                                  iv_products   TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_05_EAGM_PLANT IMPLEMENTATION.


  METHOD constructor.
    super->constructor( iv_quoatation = iv_quoatation ).
    me->products = iv_products.
  ENDMETHOD.


  METHOD set_company_code.
    super->set_company_code( iv_company_code = iv_company_code ).
    me->company_code = 'ABCD'.
  ENDMETHOD.
ENDCLASS.
