CLASS zcl_25_eagm_usa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_eagm_08_cc_company .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_25_EAGM_USA IMPLEMENTATION.


  METHOD zif_eagm_08_cc_company~define_company.
    rv_company = 'Company USA....'.
  ENDMETHOD.
ENDCLASS.
