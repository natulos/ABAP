CLASS zcl_13_eagm_ny_plant DEFINITION INHERITING FROM zcl_11_eagm_plant
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_prodcuts_sl.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_13_EAGM_NY_PLANT IMPLEMENTATION.


  METHOD get_prodcuts_sl.
    DATA(lo_storage_location) = NEW zcl_12_eagm_storage_location(  ).
    lo_storage_location->prodcut = 'PC'.
  ENDMETHOD.
ENDCLASS.
