CLASS zcl_prb_fill_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_prb_fill_art IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    data: it_art type STANDARD TABLE OF zprb_db_art.
    it_art = value #(
        (
            client = sy-mandt
            id_art = 1
            desc1 = 'Mini colores'
            desc2 = 'Un mini estuche, con mini colores'
            color = 'varios'
            piezas = 12
            stock = 10
            url = 'https://lalibreteria.mx/products/zebra-mildliner-colores-amigables?_pos=1&_sid=66bfacc7c&_ss=r'
        )
        (
            client = sy-mandt
            id_art = 2
            desc1 = 'Agenda'
            desc2 = 'Agenda 2025 Hard Cover'
            color = 'Azul'
            piezas = 1
            stock = 100
            url = 'https://lalibreteria.mx/products/agenda-2025-azul-aqua-hard-cover'
        )
        (
            client = sy-mandt
            id_art = 3
            desc1 = 'Sacapuntas'
            desc2 = 'Maiba Sacapuntas'
            color = 'Transparente'
            piezas = 2
            stock = 20
            url = 'https://lalibreteria.mx/products/2-maiba-sacapuntas'
        )
        (
            client = sy-mandt
            id_art = 4
            desc1 = 'Libreta'
            desc2 = 'Libreta Barcelona Refill'
            color = 'Cafe'
            piezas = 2
            stock = 30
            url = 'https://lalibreteria.mx/products/2-pack-libreta-barcelona-refill'
        )
    ).

    insert zprb_db_art from table @it_art.
    if sy-subrc eq 0.
      out->write( 'Insert Sucessfull' ).
    ELSE.
        out->write( 'Error when inserting' ).
    endif.
  ENDMETHOD.

ENDCLASS.
