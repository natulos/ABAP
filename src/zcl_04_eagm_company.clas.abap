CLASS zcl_04_eagm_company DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
      quoatation   TYPE string READ-ONLY,
      company_attr TYPE string.

    METHODS:
      constructor       IMPORTING iv_quoatation TYPE string,
      set_company_code  IMPORTING iv_company_code TYPE string,
      get_company_code  EXPORTING ev_company_code TYPE string,
      set_currency      IMPORTING iv_currency TYPE string,
      get_currency      EXPORTING ev_currency TYPE string.

  PROTECTED SECTION.
    DATA:
      company_code TYPE c LENGTH 4,
      currency     TYPE c LENGTH 3.

  PRIVATE SECTION.
    DATA:
      company_atr TYPE string.

ENDCLASS.



CLASS ZCL_04_EAGM_COMPANY IMPLEMENTATION.


  METHOD constructor.
    me->quoatation = iv_quoatation.
  ENDMETHOD.


  METHOD get_company_code.
    ev_company_code = me->company_code.
  ENDMETHOD.


  METHOD get_currency.
    ev_currency = me->currency.
  ENDMETHOD.


  METHOD set_company_code.
    me->company_code = iv_company_code.
  ENDMETHOD.


  METHOD set_currency.
    me->currency = iv_currency.
  ENDMETHOD.
ENDCLASS.
