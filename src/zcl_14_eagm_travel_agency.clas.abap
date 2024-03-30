CLASS zcl_14_eagm_travel_agency DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_eagm_01_agency .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        agency_type TYPE string.

    CLASS-DATA:
        agency_address TYPE string.
ENDCLASS.



CLASS ZCL_14_EAGM_TRAVEL_AGENCY IMPLEMENTATION.


  METHOD zif_eagm_01_agency~set_address.
    zif_eagm_01_agency~agency_addres = iv_address.
  ENDMETHOD.


  METHOD zif_eagm_01_agency~get_name.
    rv_type = me->agency_type.
  ENDMETHOD.


  METHOD zif_eagm_01_agency~set_name.
    me->agency_type = iv_type.
  ENDMETHOD.
ENDCLASS.
