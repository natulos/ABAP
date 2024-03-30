CLASS zcl_09_eagm_citizen DEFINITION
  PUBLIC
  CREATE PRIVATE
  GLOBAL FRIENDS zcl_10_eagm_eu_citizen.
*  CREATE PROTECTED .
*  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_id FINAL IMPORTING iv_id TYPE i,
      get_parent_instance RETURNING VALUE(ro) TYPE REF TO zcl_09_eagm_citizen.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_09_EAGM_CITIZEN IMPLEMENTATION.


  METHOD set_id.
    DATA(lo_citizen) = NEW zcl_09_eagm_citizen(  ).
  ENDMETHOD.


  METHOD get_parent_instance.
    ro = NEW zcl_09_eagm_citizen(  ).
  ENDMETHOD.
ENDCLASS.
