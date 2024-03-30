CLASS zcl_30_eagm_laptop DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
        keyboard TYPE REF TO zcl_29_eagm_keyboard.

    METHODS:
      constructor IMPORTING io_keyboard TYPE REF TO zcl_29_eagm_keyboard.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_30_EAGM_LAPTOP IMPLEMENTATION.


  METHOD constructor.
    me->keyboard = io_keyboard.
  ENDMETHOD.
ENDCLASS.
