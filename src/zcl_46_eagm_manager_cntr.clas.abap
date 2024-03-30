CLASS zcl_46_eagm_manager_cntr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      check_user IMPORTING iv_user TYPE syuname
                 RAISING   zcx_45_eagm_auth.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_46_eagm_manager_cntr IMPLEMENTATION.
  METHOD check_user.
    IF sy-uname = 'CB9980005959'.

      RAISE EXCEPTION TYPE zcx_45_eagm_auth
        EXPORTING
          textid   = zcx_45_eagm_auth=>no_auth
*         previous =
          iv_msgv1 = |{ sy-uname }|
          iv_msgv2 = 'Edit Contract'
*         iv_msgv3 =
*         iv_msgv4 =
        .
    ELSE.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
