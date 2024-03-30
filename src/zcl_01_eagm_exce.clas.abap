CLASS zcl_01_eagm_exce DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_eagm_exce IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

**    DATA(lo_contract) = NEW zcl_02_contract(  ). "Aplica cuando la clase es de instacia publica.
*    zcl_02_contract=>get_instance( IMPORTING er_instance = DATA(lo_contract) ). "Para instancias privadas
*
*    DATA:
*      lv_process TYPE string,
*      lt_address TYPE zcl_02_contract=>tty_address,
*      ls_address TYPE zcl_02_contract=>ty_address.
*
*    IF lo_contract IS BOUND.
*
*      lo_contract->set_client(
*        EXPORTING
*          iv_client   = 'EAGM'
*          iv_location = space
*      IMPORTING
*        ev_status   = DATA(lv_status)
*        CHANGING
*          cv_process  = lv_process ).
*
*      lo_contract->get_client(
*        IMPORTING
*          ev_client = DATA(lv_client) ).
*
*      lo_contract->region = 'CO'.
*
*      DATA(lv_client_name) = lo_contract->get_client_name( '01' ).
*
*    ENDIF.
*
*    zcl_02_contract=>set_cntr_type( 'Construccion' ).
*
*    zcl_02_contract=>get_cntr_type(
*      IMPORTING
*        ev_cntr_type = DATA(lv_cntr_type) ).
*
*    zcl_02_contract=>currency = zcl_02_contract=>cs_currency-usd.
*
*    "Escribir en consola.
*    out->write( |{ lv_client }-{ lv_status }-{ lv_process }-{ lo_contract->region }| ).
*    out->write( lv_cntr_type ).
*    out->write( zcl_02_contract=>currency ).
*    out->write( zcl_03_eagm_employee=>log ).
*
*    DATA(lo_empoyee1) = NEW zcl_03_eagm_employee( iv_employee_id = '01' ).
*    out->write( zcl_03_eagm_employee=>log ).
*    DATA(lo_empoyee2) = NEW zcl_03_eagm_employee( iv_employee_id = '02' ).
*    out->write( zcl_03_eagm_employee=>log ).
*    out->write( zcl_03_employee=>company ).

*    DATA(lo_company)    = NEW zcl_04_eagm_company( iv_quoatation = 'Q1' ).
*    DATA(lo_plnat)      = NEW zcl_05_eagm_plant( iv_quoatation = 'Q2'
*                                                 iv_products = 'P2'  ).
*    DATA(lo_storage)    = NEW zcl_06_eagm_storage( iv_quoatation = 'Q3'
*                                                   iv_products = 'P3'  ).
*
*    lo_company->set_company_code( '1234' ).
*    lo_company->set_currency( 'USD' ).
*
*    lo_company->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code) ).
*    lo_company->get_currency( IMPORTING ev_currency = DATA(lv_currency) ).
*
*    out->write( |Company: { lv_company_code }-{ lv_currency }| ).
*
*    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*    lo_plnat->set_company_code( '5678' ).
*    lo_plnat->set_currency( 'EUR' ).
*
*    lo_plnat->get_company_code( IMPORTING ev_company_code = lv_company_code ).
*    lo_plnat->get_currency( IMPORTING ev_currency = lv_currency ).
*
*    out->write( |Plnat: { lv_company_code }-{ lv_currency }| ).
*
*    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*    lo_storage->set_company_code( '9012' ).
*    lo_storage->set_currency( 'COP' ).
*
*    lo_storage->get_company_code( IMPORTING ev_company_code = lv_company_code ).
*    lo_storage->get_currency( IMPORTING ev_currency = lv_currency ).
*
*    out->write( |Storage Location: { lv_company_code }-{ lv_currency }| ).

*    DATA(lo_animal) = NEW zcl_07_eagm_animal(  ).
*    DATA(lo_lion)   = NEW zcl_08_eagm_lion(  ).
*
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).
*
*    lo_animal = lo_lion. "Narrowing Cast or Up Cast
*    out->write( 'Narrowing Cast or Up Cast' ).
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).
*
*    TRY.
*        lo_lion ?= lo_animal.
*      CATCH cx_sy_move_cast_error.
*        out->write( 'Casting error' ).
*        RETURN.
*    ENDTRY.
*
*    out->write( 'Widening Cast or Down Cast' ).
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).

*    DATA(lo_travel_agency) = NEW zcl_14_eagm_travel_agency(  ).
*
*    lo_travel_agency->zif_eagm_01_agency~set_name( iv_type = 'Agancy.Name' ).
*    out->write( lo_travel_agency->zif_eagm_01_agency~get_name(  ) ).
*
*    zcl_14_eagm_travel_agency=>zif_eagm_01_agency~set_address( 'Medellin, Colombia' ).

*    DATA(lo_screen) = NEW zcl_15_eagm_screen( 22 ).
*
*    out->write( lo_screen->zif_eagm_02_eu_unit~dimensions_centimeteres(  ) ).
*    out->write( lo_screen->zif_eagm_03_en_unit~dimensions_inches( ) ).

*    DATA(lo_sales_deparment) = NEW zcl_16_eagm_sales_deparment(  ).
*    lo_sales_deparment->zif_eagm_04_document~set_sales_doc( iv_sales_doc = '1234' ).
*    lo_sales_deparment->zif_eagm_05_sales_order~create_order( iv_order_id = '0123' ).

*    DATA(lo_bp) = NEW zcl_17_eagm_bp( ).
*    lo_bp->set_company_type( ).
**    lo_bp->zif_eagm_07_company~set_company_type( ).

*    DATA:
*      gt_airplanes       TYPE STANDARD TABLE OF REF TO zcl_21_eagm_airplane,
*      go_airplane        TYPE REF TO zcl_21_eagm_airplane,
*      go_cargo_plane     TYPE REF TO zcl_22_eagm_cargo_plane,
*      go_passenger_plane TYPE REF TO zcl_23_eagm_passenger_plane.
*
*    go_cargo_plane = NEW #(  ).
*    APPEND go_cargo_plane TO gt_airplanes.
*
*    go_passenger_plane = NEW #(  ).
*    APPEND go_passenger_plane TO gt_airplanes.
*
*    LOOP AT gt_airplanes INTO go_airplane.
*      out->write( go_airplane->airplane_type(  ) ).
*    ENDLOOP.
*
*    DATA:
*      gt_co_companies TYPE STANDARD TABLE OF REF TO zif_eagm_08_cc_company,
*      go_co_company   TYPE REF TO zif_eagm_08_cc_company,
*      go_company_eu   TYPE REF TO zcl_24_eagm_eu,
*      go_company_usa  TYPE REF TO zcl_25_eagm_usa,
*      go_plant        TYPE REF TO zcl_26_eagm_plant.
*
*    go_company_eu = NEW #(  ).
*    APPEND go_company_eu to gt_co_companies.
*
*    go_company_usa = NEW #(  ).
*    APPEND go_company_usa to gt_co_companies.
*
*    go_plant = NEW #(  ).
*
*    LOOP AT gt_co_companies into go_co_company.
*        out->write( go_co_company->define_company(  ) ).
*        out->write( go_plant->assing_company( go_co_company ) ).
*    ENDLOOP.
*
*    DATA(lo_credit_cart) = NEW zcl_27_eagm_credit_cart(  ).
*    DATA(lo_client)      = NEW zcl_28_eagm_client(  ).
*
*    lo_credit_cart->set_card_num( '1111 2222 3333 4444' ).
*    lo_client->set_credit_card( lo_credit_cart ).
*    out->write( lo_client->get_credit_card(  )->get_card_num(  ) ).

*    data(lo_keyboard) = new zcl_29_eagm_keyboard(  ).
*    data(lo_laptop) = new zcl_30_eagm_laptop( io_keyboard = lo_keyboard ).
*
*    lo_keyboard->keyboard_type = 'ES'.
*    out->write( lo_laptop->keyboard->keyboard_type ).

*    DATA:
*      lo_vat_indicator_1 TYPE REF TO zcl_31_eagm_vat_indicator,
*      lo_vat_indicator_2 TYPE REF TO zcl_31_eagm_vat_indicator,
*      lo_vat_indicator_3 TYPE REF TO zcl_31_eagm_vat_indicator.
*
*    lo_vat_indicator_1 = NEW #(  ).
*    lo_vat_indicator_2 = NEW #(  ).
*    lo_vat_indicator_3 = NEW #(  ).
*
*    lo_vat_indicator_2 = lo_vat_indicator_1.
*    lo_vat_indicator_3 = lo_vat_indicator_1.
*
**    lo_vat_indicator_1->vat_indicator = 'A1'.
*    lo_vat_indicator_2->vat_indicator = 'A2'.
**    lo_vat_indicator_3->vat_indicator = 'A3'.
*
*
*    out->write( lo_vat_indicator_1->vat_indicator ).
*    out->write( lo_vat_indicator_2->vat_indicator ).
*    out->write( lo_vat_indicator_3->vat_indicator ).

*    DATA:
*        go_contrato TYPE REF TO zif_eagm_09_contract.
*
*    go_contrato = NEW zcl_32_eagm_constr_cntr(  ).
*    CREATE OBJECT go_contrato TYPE zcl_32_eagm_constr_cntr.

*    DATA:
*      go_object   TYPE REF TO object,
*      lv_category TYPE string.
*
*    go_object = NEW zck_34_eagm_product(  ).
*    DATA(lv_method_name) = 'RETURN_CATEGORY'.
*
*    CALL METHOD go_object->(lv_method_name) RECEIVING rv_category = lv_category.
*
*    out->write( lv_category ).

**********************************************************************

*    DATA(go_timer) = NEW zcl_35_eagm_timer( ).
*    DATA(go_conexion) = NEW zcl_36_eagm_conexion( ).
*
*    SET HANDLER go_conexion->on_time_out FOR go_timer.
*
*    DO.
*      WAIT UP TO 1 SECONDS.
*      go_timer->increment_counter( 1 ).
*
*      IF go_conexion->hour IS INITIAL.
*        out->write( |Event not yet exectuted: { cl_abap_context_info=>get_system_time( ) }| ).
*      ELSE.
*        out->write( |Event was raised at: { go_conexion->hour }-{ go_conexion->sender_user }| ).
*        EXIT.
*      ENDIF.
*    ENDDO.
**********************************************************************
*    DATA(go_americanbank) = NEW zcl_37_eagm_americanbank( ).
*    DATA(go_bankclient)   = NEW zcl_38_eagm_bankclient( ).
*
*    SET HANDLER go_bankclient->on_new_transfer FOR go_americanbank.
*
*    DO 5 TIMES.
*      WAIT UP TO 1 SECONDS.
*
*      out->write( go_americanbank->create_notifications(  ) ).
*      out->write( go_bankclient->notification ).
*
*      IF sy-index = 3.
*        SET HANDLER go_bankclient->on_new_transfer FOR go_americanbank ACTIVATION abap_false.
*        go_bankclient->notification = |No handler for event New Transfer|.
*      ENDIF.
*    ENDDO.

**********************************************************************

*    SET HANDLER zcl_40_eagm_smtp=>on_new_mail.
*
*    DO 3 TIMES.
*      WAIT UP TO 1 SECONDS.
*      zcl_39_eamg_mail=>compose_mail( ).
*    ENDDO.
*
*    out->write( zcl_40_eagm_smtp=>table_inbox ).

**********************************************************************

*    DATA(go_north_building) = NEW zcl_41_eagm_building(  ).
*    DATA(go_south_building) = NEW zcl_41_eagm_building(  ).
*    DATA(go_east_building)  = NEW zcl_41_eagm_building(  ).
*    DATA(go_west_building)  = NEW zcl_41_eagm_building(  ).
*    DATA(go_access)         = NEW zcl_42_eagm_access( ).
*
**    SET HANDLER go_access->on_block_entrnace FOR go_north_building.
**    SET HANDLER go_access->on_block_entrnace FOR go_south_building.
**    SET HANDLER go_access->on_block_entrnace FOR go_east_building.
**    SET HANDLER go_access->on_block_entrnace FOR go_west_building.
*
*    "Remplaza las 4 lineas anteriores "Puede ser incluido en el constructor.
**    SET HANDLER go_access->on_block_entrnace FOR ALL INSTANCES.
*
*    go_north_building->entry = 'NORTH'.
*    go_north_building->close_entry( ).
*
*    go_south_building->entry = 'SOUTH'.
*    go_south_building->close_entry( ).
*
*    go_east_building->entry = 'EAST'.
*    go_east_building->close_entry( ).
*
*    go_west_building->entry = 'WEST'.
*    go_west_building->close_entry( ).
*    out->write( zcl_42_eagm_access=>table_blocked_entries ).

**********************************************************************
*
*    DATA(go_components) = NEW zcl_43_eagm_componets(  ).
*
*    go_components->get_first(
**      IMPORTING
**        ev_first =
*    ).

**********************************************************************

*    DATA(lo_manager_cntr) = NEW zcl_46_eagm_manager_cntr( ).
*
*    DATA:
*      lv_result TYPE i,
*      lv_num1   TYPE i VALUE 10,
*      lv_num2   TYPE i.
*
*    TRY.
*        "lo_manager_cntr->check_user( iv_user = sy-uname  ).
*
*        lv_result = lv_num1 / lv_num2.
*      CATCH zcx_45_eagm_auth INTO DATA(lx_auth).
*        out->write( lx_auth->get_text( ) ).
*
*      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
*        out->write( lx_zerodivide->get_text(  ) ).
*        lv_num2 = 2.
*        RETRY.
*        CLEANUP. "Para tratar excepciones que no fueron caputras. Se usa en try/catch's anidados
*    ENDTRY.
*
*    out->write( |Finish: { lv_result }| ).
**********************************************************************

*    DATA(lo_atm) = NEW zcl_50_eagm_atm(  ).
*
*    "1. Expired Credit Car
*    out->write( |Use case 1. Expired Credit Car| ).
*    out->write( lo_atm->withdraw_money( EXPORTING iv_card   = '1111 2222 3333 4444'
*                                                  iv_amount = 30 ) ).
*
*
*    "2. Insufficient balance in the current account
*    out->write( |Use case 2. Insufficient balance in the current account| ).
*    out->write( lo_atm->withdraw_money( EXPORTING iv_card   = '1111 2222 3333 5555'
*                                                  iv_amount = 100 ) ).
*
*    "3. Withdraw money form the saving account
*    out->write( |Use case 3. Withdraw money form the saving account| ).
*    out->write( lo_atm->withdraw_money( EXPORTING iv_card            = '1111 2222 3333 5555'
*                                                  iv_amount          = 100
*                                                  iv_savings_account = abap_true ) ).

**********************************************************************

*    DATA(lo_excecution) = NEW zcx_54_eagm_excecution(  ).
*    TRY.
*        TRY.
*            TRY.
*                lo_excecution->raise_exception_1(  ).
*
*              CATCH zcx_51_eagm_exception1 INTO DATA(lx_exception_1).
*
*                lo_excecution->raise_exception_2( io_previous = lx_exception_1 ).
*            ENDTRY.
*
*          CATCH zcx_52_eagm_exception2 INTO DATA(lx_exception_2).
*
*            lo_excecution->raise_exception_3( io_previous = lx_exception_2 ).
*        ENDTRY.
*
*      CATCH zcx_53_eagm_exception3 INTO DATA(lx_exception_3).
*
*        out->write( |{ lx_exception_3->get_text(  ) }{ cl_abap_char_utilities=>newline }| ).
*        out->write( |{ lx_exception_3->previous->get_text(  ) }\n| ).
*        out->write( |{ lx_exception_3->previous->previous->get_text(  ) }\n| ).
*
*        IF lx_exception_3->previous->previous->previous IS BOUND.
*          out->write( lx_exception_3->previous->previous->previous->get_text(  ) ).
*        ENDIF.
*
*    ENDTRY.

**********************************************************************

*    DATA(lo_business_pr) = NEW zcl_55_eagm_business_pr(  ).
*
*    lo_business_pr->get_factortial(
*      EXPORTING
*        iv_number    = 4
*      IMPORTING
*        ev_factorial = DATA(lv_factorial) ).
*
*    out->write( lv_factorial ).

**********************************************************************

*    DATA(lo_cut) = NEW zcl_57_eagm_test_inj(  ).
*
*    lo_cut->get_customer(
*      IMPORTING
*        es_customer = DATA(ls_customer) ).
*
*    out->write( |{ ls_customer-customer_id }-{ ls_customer-country_code }| ).


**********************************************************************

*    DATA(lo_cut) = NEW zcl_lab_61_eagm_travel(  ).
*
*    lo_cut->get_travel(
*      RECEIVING
*        rs_fligth = DATA(ls_fligth) ).
*
*    out->write( ls_fligth ).

**********************************************************************
*    "Singleton
*    DATA:
*      go_singleton_1 TYPE REF TO zcl_58_eagm_singleton,
*      go_singleton_2 TYPE REF TO zcl_58_eagm_singleton.
*
*    go_singleton_1 = zcl_58_eagm_singleton=>get_instance(  ).
*    WAIT UP TO 2 SECONDS.
*
*    go_singleton_2 = zcl_58_eagm_singleton=>get_instance(  ).
*    WAIT UP TO 2 SECONDS.
*
*    out->write( go_singleton_1->mv_time ).
*    out->write( go_singleton_2->mv_time ).
*
*    go_singleton_1->mv_time = cl_abap_context_info=>get_system_time( ).
*
*    out->write( cl_abap_char_utilities=>newline ).
*
*    out->write( go_singleton_1->mv_time ).
*    out->write( go_singleton_2->mv_time ).

**********************************************************************
*    "Factory Method
*    DATA:
*      go_shape   TYPE REF TO zif_eagm_11_geometric_figure,
*      go_factory TYPE REF TO zcl_62_eagm_factory.
*
*      go_factory = new #(  ).
*      go_shape = go_factory->get_shape( 'Circle' ).
*      out->write( go_shape->draw_shape( ) ).
*
*      go_shape = go_factory->get_shape( 'Square' ).
*      out->write( go_shape->draw_shape( ) ).
*
*      go_shape = go_factory->get_shape( 'Triangle' ).
*      out->write( go_shape->draw_shape( ) ).
*
**********************************************************************
*
    DATA(go_processes) = NEW zcl_66_eagm_processes( ).
    DATA(go_sales_dep) = NEW zcl_68_eagm_sales_dep( ).
    DATA(go_billing_dep) = NEW zcl_69_eagm_belling_dep(  ).


    SET HANDLER go_sales_dep->on_modified_state FOR go_processes.
    SET HANDLER go_billing_dep->on_modified_state FOR go_processes.

    "Set new state
    go_processes->set_state( 'NEWSALES01 - Product 123456 - Laptop HP Sold' ).


    out->write( go_processes->get_state( ) ).
    out->write( go_sales_dep->state ).
    out->write( go_billing_dep->state ).

**********************************************************************

    DATA:
      lv_name TYPE string VALUE 'Antonio Guzman',
      lv_role TYPE string VALUE 'Developer'.


    DATA(go_model) = NEW zcl_70_eagm_emp_model( iv_name = lv_name
                                                iv_role = lv_role ).

    DATA(go_view) = NEW zcl_71_eagm_emp_view(  ).
    DATA(go_controller) = NEW zcl_72_eagm_emp_controller(  ).

    go_controller->set_model( go_model ).
    go_controller->set_view( go_view ).

    go_controller->get_view(  )->display_employee( iv_name = go_model->get_name( )
                                                   iv_role = go_model->get_role( )
                                                   io_out  = out ).


  ENDMETHOD.

ENDCLASS.
