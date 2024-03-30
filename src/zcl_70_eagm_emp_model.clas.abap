CLASS zcl_70_eagm_emp_model DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      Constructor IMPORTING iv_name TYPE string
                            iv_role TYPE string,
      set_name     IMPORTING iv_name        TYPE string,
      get_name     RETURNING VALUE(rv_name) TYPE string,
      set_role     IMPORTING iv_role        TYPE string,
      get_role     RETURNING VALUE(rv_role) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      name TYPE string,
      role TYPE string.

ENDCLASS.



CLASS zcl_70_eagm_emp_model IMPLEMENTATION.
  METHOD constructor.
    me->name = iv_name.
    me->role = iv_role.
  ENDMETHOD.

  METHOD get_name.
    rv_name = me->name.
  ENDMETHOD.

  METHOD get_role.
    rv_role = me->role.
  ENDMETHOD.

  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

  METHOD set_role.
    me->role = iv_role.
  ENDMETHOD.

ENDCLASS.
