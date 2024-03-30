*"* use this source file for your ABAP unit test classes
CLASS ltcl_business_pr DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      factorial_local_test FOR TESTING RAISING cx_static_check.

    DATA:
        mo_cut TYPE REF TO zcl_55_eagm_business_pr. "CUT: Class Under Test

    CLASS-METHODS:
      class_setup,
      class_teardown.

    METHODS:
      setup,
      teardown.
ENDCLASS.


CLASS ltcl_business_pr IMPLEMENTATION.

  METHOD factorial_local_test.

    "Given
    DATA(lv_number_ut) = 4.
    DATA lv_factorial TYPE i.

    "When
    mo_cut->get_factortial(
      EXPORTING
        iv_number    = lv_number_ut
      IMPORTING
        ev_factorial = lv_factorial ).

    "Then
    IF cl_abap_unit_assert=>assert_equals( EXPORTING act = lv_factorial
                                                     exp = 24 ) = abap_true.

      cl_abap_unit_assert=>fail( 'Factorial Process Failed' ).
    ENDIF.
  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW zcl_55_eagm_business_pr(  ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

ENDCLASS.
