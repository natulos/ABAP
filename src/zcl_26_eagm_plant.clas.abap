CLASS zcl_26_eagm_plant DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      assing_company IMPORTING ir_co_company   TYPE REF TO zif_eagm_08_cc_company
                     RETURNING VALUE(rv_plant) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_26_EAGM_PLANT IMPLEMENTATION.


  METHOD assing_company.
    rv_plant = |Plant was assigned to.... { ir_co_company->define_company(  ) } |.
  ENDMETHOD.
ENDCLASS.
