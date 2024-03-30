CLASS zcl_17_eagm_bp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
        zif_eagm_07_company.

    ALIASES:
        set_company_type for zif_eagm_07_company~set_company_type.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_17_EAGM_BP IMPLEMENTATION.


  METHOD set_company_type.

  ENDMETHOD.


  METHOD zif_eagm_07_company~group.

  ENDMETHOD.
ENDCLASS.
