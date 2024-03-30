CLASS zcl_43_eagm_componets DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_44_eagm_comp_friends .

  PUBLIC SECTION.
    METHODS:
      get_first EXPORTING ev_first TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        ms_second TYPE ty_first,
        mo_helper TYPE REF TO lcl_helper.
ENDCLASS.



CLASS zcl_43_eagm_componets IMPLEMENTATION.
  METHOD get_first.
    DATA:
     ls_first TYPE ty_first.

    ev_first = me->ms_second-comp1.

    DATA:
    lo_helper TYPE REF TO lcl_helper2,
    ls_second TYPE ty_first2.
  ENDMETHOD.

ENDCLASS.
