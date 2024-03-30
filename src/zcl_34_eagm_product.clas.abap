CLASS zcl_34_eagm_product DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
    return_category RETURNING VALUE(rv_category) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    data:
        category TYPE string VALUE 'A5'.
ENDCLASS.



CLASS ZCL_34_EAGM_PRODUCT IMPLEMENTATION.


  METHOD return_category.
    rv_category = me->category.
  ENDMETHOD.
ENDCLASS.
