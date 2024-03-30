CLASS zcl_41_eagm_building DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    EVENTS:
      block_entrnace EXPORTING VALUE(ev_entry) TYPE string.

    DATA:
        entry TYPE string.

    METHODS:
      close_entry.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_41_eagm_building IMPLEMENTATION.

  METHOD close_entry.
    RAISE EVENT block_entrnace EXPORTING ev_entry = me->entry.
  ENDMETHOD.

ENDCLASS.
