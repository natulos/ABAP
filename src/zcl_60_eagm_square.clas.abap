CLASS zcl_60_eagm_square DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      zif_eagm_11_geometric_figure.

    ALIASES:
       draw_shape FOR zif_eagm_11_geometric_figure~draw_shape.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_60_eagm_square IMPLEMENTATION.
  METHOD draw_shape.
    rv_shape = 'Square'.
  ENDMETHOD.
ENDCLASS.
