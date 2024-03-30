CLASS zcl_72_eagm_emp_controller DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_model IMPORTING io_model TYPE REF TO zcl_70_eagm_emp_model,
      get_model RETURNING VALUE(ro_model) TYPE REF TO zcl_70_eagm_emp_model,
      set_view IMPORTING io_view TYPE REF TO zcl_71_eagm_emp_view,
      get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_71_eagm_emp_view.


  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      model TYPE REF TO zcl_70_eagm_emp_model,
      view  TYPE REF TO zcl_71_eagm_emp_view.

ENDCLASS.



CLASS zcl_72_eagm_emp_controller IMPLEMENTATION.
  METHOD get_model.
    ro_model = me->model.
  ENDMETHOD.

  METHOD get_view.
    ro_view = me->view.
  ENDMETHOD.

  METHOD set_model.
    me->model = io_model.
  ENDMETHOD.

  METHOD set_view.
    me->view = io_view.
  ENDMETHOD.

ENDCLASS.
