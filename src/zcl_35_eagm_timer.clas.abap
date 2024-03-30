CLASS zcl_35_eagm_timer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
        user TYPE string.

    EVENTS:
      time_out  EXPORTING VALUE(ev_hour) TYPE zsyst_uzeit.

    METHODS:
      constructor,
      increment_counter IMPORTING iv_counter TYPE i,
      check_limit.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        counter TYPE i.
ENDCLASS.

CLASS zcl_35_eagm_timer IMPLEMENTATION.
  METHOD constructor.
    me->user = sy-uname.
  ENDMETHOD.

  METHOD check_limit.
    IF me->counter >= 5.
      RAISE EVENT time_out EXPORTING ev_hour = cl_abap_context_info=>get_system_time( ).
    ENDIF.
  ENDMETHOD.

  METHOD increment_counter.
    me->counter += iv_counter.
    me->check_limit( ).
  ENDMETHOD.



ENDCLASS.
