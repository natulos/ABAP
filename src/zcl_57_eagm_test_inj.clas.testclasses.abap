*"* use this source file for your ABAP unit test classes
CLASS test_injection DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.
    "Implementacion parcial de interfaces. Solo para clases test.
    INTERFACES:
        if_a4c_bc_handler PARTIALLY IMPLEMENTED.

  PRIVATE SECTION.
    CLASS-METHODS:
      class_setup,
      class_teardown.

    DATA:
        mo_cut TYPE REF TO zcl_57_eagm_test_inj.

    METHODS:
      get_customer_test FOR TESTING RAISING cx_static_check,
      setup,
      teardown.
ENDCLASS.


CLASS test_injection IMPLEMENTATION.

  METHOD get_customer_test.
    mo_cut->get_customer(
      IMPORTING
        es_customer = DATA(ls_customer) ).

    IF cl_abap_unit_assert=>assert_equals( act = |{ ls_customer-customer_id }-{ ls_customer-country_code }|
                                           exp = '000015-US' ) = abap_true.
      cl_abap_unit_assert=>fail( 'Get customer process failed---zlc_57_eagm_test_inj->get_customer' ).
    ENDIF.

  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.

  METHOD setup.
    me->mo_cut = NEW zcl_57_eagm_test_inj(  ).

    TEST-INJECTION select_data.
      lv_customer = '000015'.
      ls_customer-customer_id = lv_customer.
      ls_customer-country_code = 'US'.
      ls_customer-city = 'New York'.
    END-TEST-INJECTION.
  ENDMETHOD.

  METHOD teardown.
    CLEAR me->mo_cut.
  ENDMETHOD.

  METHOD if_a4c_bc_handler~add_to_transport_request.

  ENDMETHOD.

ENDCLASS.
