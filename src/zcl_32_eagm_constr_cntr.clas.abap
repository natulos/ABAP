CLASS zcl_32_eagm_constr_cntr DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_eagm_09_contract .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_32_EAGM_CONSTR_CNTR IMPLEMENTATION.


  METHOD zif_eagm_09_contract~create_contract.
    me->zif_eagm_09_contract~contract_type = iv_cntr_type.
  ENDMETHOD.
ENDCLASS.
