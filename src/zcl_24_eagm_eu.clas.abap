CLASS zcl_24_eagm_eu DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      zif_eagm_08_cc_company.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_24_EAGM_EU IMPLEMENTATION.


  METHOD zif_eagm_08_cc_company~define_company.
    rv_company = 'Company Europe....'.
  ENDMETHOD.
ENDCLASS.
