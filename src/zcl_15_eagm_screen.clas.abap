CLASS zcl_15_eagm_screen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
        zif_eagm_02_eu_unit,
        zif_eagm_03_en_unit.

  METHODS:
    constructor IMPORTING iv_en_unit TYPE zfloat.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        en_unit TYPE zfloat.
ENDCLASS.



CLASS ZCL_15_EAGM_SCREEN IMPLEMENTATION.


  METHOD zif_eagm_02_eu_unit~dimensions_centimeteres.
    rv_unit = me->en_unit * '2.54'.
  ENDMETHOD.


  METHOD zif_eagm_03_en_unit~dimensions_inches.
    rv_unit = me->en_unit.
  ENDMETHOD.


  METHOD constructor.
    me->en_unit = iv_en_unit.
  ENDMETHOD.
ENDCLASS.
