CLASS zcx_54_eagm_excecution DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      raise_exception_1 IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                        RAISING   zcx_51_eagm_exception1,

      raise_exception_2 IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                        RAISING   zcx_52_eagm_exception2,

      raise_exception_3 IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                        RAISING   zcx_53_eagm_exception3.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_54_eagm_excecution IMPLEMENTATION.

  METHOD raise_exception_1.
    RAISE EXCEPTION TYPE zcx_51_eagm_exception1 EXPORTING previous = io_previous.
  ENDMETHOD.

  METHOD raise_exception_2.
    RAISE EXCEPTION TYPE zcx_52_eagm_exception2 EXPORTING previous = io_previous.
  ENDMETHOD.

  METHOD raise_exception_3.
    RAISE EXCEPTION TYPE zcx_53_eagm_exception3 EXPORTING previous = io_previous.
  ENDMETHOD.

ENDCLASS.
