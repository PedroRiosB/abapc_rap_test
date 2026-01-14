CLASS zcl_prb_fill_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_PRB_FILL_ART IMPLEMENTATION.


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
            url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-midliner-colores-amigables-01_700x.jpg?v=1711595778'
        )
        (
            client = sy-mandt
            id_art = 2
            desc1 = 'Agenda'
            desc2 = 'Agenda 2025 Hard Cover'
            color = 'Azul'
            piezas = 1
            stock = 100
            url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-agenda-2025-hard-cover-azul-aqua-03_700x.jpg?v=1720633282'
        )
        (
            client = sy-mandt
            id_art = 3
            desc1 = 'Sacapuntas'
            desc2 = 'Maiba Sacapuntas'
            color = 'Transparente'
            piezas = 2
            stock = 20
            url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-2-maiba-01_700x.jpg?v=1617157253'
        )
        (
            client = sy-mandt
            id_art = 4
            desc1 = 'Libreta'
            desc2 = 'Libreta Barcelona Refill'
            color = 'Cafe'
            piezas = 2
            stock = 30
            url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-libretas-9x20-5-barcelona-02_700x.jpg?v=1648007109'
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
