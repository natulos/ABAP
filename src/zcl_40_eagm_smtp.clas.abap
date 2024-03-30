CLASS zcl_40_eagm_smtp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA:
        table_inbox TYPE TABLE OF string.

    CLASS-METHODS:
      on_new_mail FOR EVENT new_mail OF zcl_39_eamg_mail IMPORTING ev_subject.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_40_eagm_smtp IMPLEMENTATION.
  METHOD on_new_mail.
    APPEND ev_subject TO table_inbox.
  ENDMETHOD.

ENDCLASS.
