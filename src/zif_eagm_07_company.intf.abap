INTERFACE zif_eagm_07_company
  PUBLIC .
  INTERFACES zif_eagm_06_group.

  METHODS:
    set_company_type.

  ALIASES group FOR zif_eagm_06_group~set_group.
ENDINTERFACE.
