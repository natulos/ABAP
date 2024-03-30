INTERFACE zif_eagm_05_sales_order
  PUBLIC .
    INTERFACES zif_eagm_04_document.

    METHODS:
        create_order IMPORTING iv_order_id TYPE string.

ENDINTERFACE.
