CLASS zcl_67_eagm_observer DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      on_modified_state ABSTRACT
        FOR EVENT modified_state OF zcl_66_eagm_processes
        IMPORTING ev_new_state.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_67_eagm_observer IMPLEMENTATION.
ENDCLASS.
