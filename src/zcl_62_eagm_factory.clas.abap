CLASS zcl_62_eagm_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_shape IMPORTING iv_shape_type        TYPE string
                RETURNING VALUE(ro_shape_type) TYPE REF TO zif_eagm_11_geometric_figure.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_62_eagm_factory IMPLEMENTATION.
  METHOD get_shape.
    CASE iv_shape_type.
      WHEN 'Circle'.
        ro_shape_type = NEW zcl_59_eagm_circle(  ) .
      WHEN 'Square'.
        ro_shape_type = NEW zcl_60_eagm_square(  ).
      WHEN 'Triangle'.
        ro_shape_type = NEW zcl_61_eagm_triangle(  ).
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
