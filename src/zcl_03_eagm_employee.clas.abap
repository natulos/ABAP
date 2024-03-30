CLASS zcl_03_eagm_employee DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS:
      class_constructor.

    class-DATA:
      company TYPE string READ-ONLY,
      log     TYPE string.

    METHODS:
      constructor IMPORTING iv_employee_id TYPE string,
      get_empoyee_id RETURNING VALUE(rv_employee_id) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        employee_id TYPE string.
ENDCLASS.



CLASS ZCL_03_EAGM_EMPLOYEE IMPLEMENTATION.


  METHOD constructor.
    me->employee_id = iv_employee_id.
    log = |{ log }-Instance Constructor { employee_id }-->|.
  ENDMETHOD.


  METHOD get_empoyee_id.
    rv_employee_id = me->employee_id.
  ENDMETHOD.


  METHOD class_constructor.
    zcl_03_eagm_employee=>company = 'Holcim'.
    log = |{ log }-Static Constructor -->|.
  ENDMETHOD.
ENDCLASS.
