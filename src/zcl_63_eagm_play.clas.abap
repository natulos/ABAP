CLASS zcl_63_eagm_play DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
    DATA:
      players_counter TYPE i.

    METHODS:
      initialize_game ABSTRACT,
      create_game     ABSTRACT IMPORTING iv_player TYPE i,
      end_game        ABSTRACT RETURNING VALUE(rv_fonalized) TYPE abap_bool,
      print_winer     ABSTRACT,
      play FINAL IMPORTING iv_palyers TYPE i.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_63_eagm_play IMPLEMENTATION.
  METHOD play.
    DATA:
    lv_player TYPE i.

    CLEAR:
    me->players_counter.

    me->players_counter = iv_palyers.
    me->initialize_game(  ).

    WHILE me->end_game(  ) <> abap_false.

      me->create_game( lv_player ).
      lv_player += 1.

    ENDWHILE.

    me->print_winer( ).
  ENDMETHOD.

ENDCLASS.
