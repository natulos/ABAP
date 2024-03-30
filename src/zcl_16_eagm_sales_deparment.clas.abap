CLASS zcl_16_eagm_sales_deparment DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      zif_eagm_05_sales_order.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_16_EAGM_SALES_DEPARMENT IMPLEMENTATION.


  METHOD zif_eagm_04_document~set_sales_doc.

  ENDMETHOD.


  METHOD zif_eagm_05_sales_order~create_order.

  ENDMETHOD.
ENDCLASS.
