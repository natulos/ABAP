CLASS zcl_69_eagm_belling_dep DEFINITION INHERITING FROM zcl_67_eagm_observer
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
     state TYPE string.

    METHODS:
      on_modified_state REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_69_eagm_belling_dep IMPLEMENTATION.
  METHOD on_modified_state.
    me->state = ev_new_state.
  ENDMETHOD.

ENDCLASS.
