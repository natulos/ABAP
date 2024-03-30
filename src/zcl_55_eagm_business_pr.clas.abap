CLASS zcl_55_eagm_business_pr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_factortial IMPORTING iv_number    TYPE i
                     EXPORTING ev_factorial TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_55_eagm_business_pr IMPLEMENTATION.
  METHOD get_factortial.
    CHECK iv_number > 0.

    DATA(lv_number) = iv_number.

    ev_factorial = 1.
    WHILE lv_number <> 0.
      ev_factorial = ev_factorial * lv_number.
      lv_number -= 1.
    ENDWHILE.
  ENDMETHOD.

ENDCLASS.
