CLASS zcl_56_eagm_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.
    METHODS:
      "! @testing zcl_55_eagm_business_pr
      factorial_test FOR TESTING .

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        mo_cut TYPE REF TO zcl_55_eagm_business_pr. "CUT: Class Under Test

    METHODS:
      setup,
      teardown.
ENDCLASS.


CLASS zcl_56_eagm_test IMPLEMENTATION.
  METHOD factorial_test.

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
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial
        exp                  = 24 ).

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW zcl_55_eagm_business_pr(  ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

ENDCLASS.
