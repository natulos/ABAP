CLASS zcl_11_eagm_plant DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_product RETURNING VALUE(rv_product) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_11_EAGM_PLANT IMPLEMENTATION.


  METHOD get_product.
    DATA(lo_storage_location) = NEW zcl_12_eagm_storage_location(  ).

    lo_storage_location->prodcut = 'PC'.
    lo_storage_location->set_product( iv_product = 'Laptop' ).
  ENDMETHOD.
ENDCLASS.
