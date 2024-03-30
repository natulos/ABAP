CLASS zcl_38_eagm_bankclient DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
        notification TYPE string.

    METHODS:
      on_new_transfer FOR EVENT new_transfer OF zif_eagm_10_bank IMPORTING sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_38_eagm_bankclient IMPLEMENTATION.
  METHOD on_new_transfer.
    me->notification = |{ sender->office }-{ cl_abap_context_info=>get_system_time( ) }|.
  ENDMETHOD.

ENDCLASS.
