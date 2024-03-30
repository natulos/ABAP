CLASS zcl_61_eagm_triangle DEFINITION
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



CLASS zcl_61_eagm_triangle IMPLEMENTATION.
  METHOD draw_shape.
    rv_shape = 'Triangle'.
  ENDMETHOD.
ENDCLASS.
