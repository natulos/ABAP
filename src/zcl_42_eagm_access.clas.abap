CLASS zcl_42_eagm_access DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA:
      table_blocked_entries TYPE TABLE OF string.

    METHODS:
      constructor,
      on_block_entrnace FOR EVENT block_entrnace OF zcl_41_eagm_building IMPORTING ev_entry.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_42_eagm_access IMPLEMENTATION.
  METHOD constructor.
    SET HANDLER me->on_block_entrnace FOR ALL INSTANCES.
  ENDMETHOD.

  METHOD on_block_entrnace.
    APPEND |{ ev_entry } entry bloqued| TO table_blocked_entries.
  ENDMETHOD.
ENDCLASS.
