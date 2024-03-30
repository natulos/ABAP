CLASS zcl_37_eagm_americanbank DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_eagm_10_bank .

    METHODS:
        create_notifications RETURNING VALUE(rv_text) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_37_eagm_americanbank IMPLEMENTATION.
  METHOD create_notifications.
    rv_text = |Event Raise: New transfer-> { cl_abap_context_info=>get_system_time( ) }|.
    RAISE EVENT zif_eagm_10_bank~new_transfer.
  ENDMETHOD.

ENDCLASS.
