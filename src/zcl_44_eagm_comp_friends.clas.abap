CLASS zcl_44_eagm_comp_friends DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_helper.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_44_eagm_comp_friends IMPLEMENTATION.
  METHOD get_helper.

    DATA(lo_components) = NEW zcl_43_eagm_componets( ).

    CLEAR lo_components->mo_helper->ms_first_cl.

    DATA(ls_first) = lo_components->mo_helper->get_first( ).
  ENDMETHOD.

ENDCLASS.
