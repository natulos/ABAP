CLASS zcx_47_eagm_expired_card DEFINITION
  PUBLIC
  FINAL
  INHERITING FROM cx_static_check
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

    CONSTANTS:
      BEGIN OF card_expired,
        msgid TYPE symsgid VALUE 'ZMC_EAGM',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE 'MV_MSGV1',
        attr2 TYPE scx_attrname VALUE 'MV_MSGV2',
        attr3 TYPE scx_attrname VALUE 'MV_MSGV3',
        attr4 TYPE scx_attrname VALUE 'MV_MSGV4',
      END OF card_expired.

    DATA:
      mv_msgv1 TYPE string,
      mv_msgv2 TYPE string,
      mv_msgv3 TYPE string,
      mv_msgv4 TYPE string.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        Iv_msgv1  TYPE string OPTIONAL
        Iv_msgv2  TYPE string OPTIONAL
        Iv_msgv3  TYPE string OPTIONAL
        Iv_msgv4  TYPE string OPTIONAL.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_47_eagm_expired_card IMPLEMENTATION.
  METHOD constructor ##ADT_SUPPRESS_GENERATION.

    CALL METHOD super->constructor
      EXPORTING
        previous = previous.
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

    me->mv_msgv1 = iv_msgv1.
    me->mv_msgv2 = iv_msgv2.
    me->mv_msgv3 = iv_msgv3.
    me->mv_msgv4 = iv_msgv4.
  ENDMETHOD.

ENDCLASS.
