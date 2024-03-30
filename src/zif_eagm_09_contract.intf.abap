INTERFACE zif_eagm_09_contract
  PUBLIC .
    data:
        contract_type TYPE string.

    METHODS:
    create_contract IMPORTING iv_cntr_type TYPE string.

ENDINTERFACE.
