CLASS zcl_18_eagm_moto DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_hp IMPORTING iv_hp TYPE i.

  PROTECTED SECTION.
    METHODS:
        set_max_speed ABSTRACT IMPORTING iv_max_speed TYPE i.
  PRIVATE SECTION.
    data:
        hp TYPE i.
ENDCLASS.



CLASS ZCL_18_EAGM_MOTO IMPLEMENTATION.


  METHOD set_hp.
    me->hp = iv_hp.
  ENDMETHOD.
ENDCLASS.
