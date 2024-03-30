INTERFACE zif_eagm_01_agency
  PUBLIC .

  CLASS-DATA:
    agency_addres TYPE string.

  METHODS:
    set_name IMPORTING iv_type          TYPE string,
    get_name RETURNING VALUE(rv_type)   TYPE string.

  CLASS-METHODS:
    set_address IMPORTING iv_address TYPE string.

ENDINTERFACE.
