CLASS zmgmc_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmgmc_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data : it_art TYPE STANDARD TABLE OF zmgmc_tab_art.

         it_art = VALUE #(
            ( client = sy-mandt id_art = 1 descr = 'mini colores' descr2 = 'estuche miniatura' color = 'varios' piezas = 12 stock = 10 url =
'https://lalibreteria.mx/cdn/shop/files/la-libreteria-zebra-mildliner-brillante-03_600x.jpg?v=1711595961' )
            ( client = sy-mandt id_art = 2 descr = 'libreta' descr2 = 'libreta de anotaciones' color = 'cebra' piezas = 1 stock = 100 url = 'https://lalibreteria.mx/cdn/shop/products/La-Libreteria-Lineas-Black-1_400x.jpg?v=1588290312' )
            ( client = sy-mandt id_art = 3 descr = 'Marca textos' descr2 = 'estuche marcadores de texto' color = 'varios' piezas = 6 stock = 10 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-stabilo-boss-1_400x.jpg?v=1602029211' )
            ( client = sy-mandt id_art = 4 descr = 'Lapiz' descr2 = 'blackwing pencil' color = 'varios' piezas = 4 stock = 10 url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-blackwing-essentials-set-01_600x.jpg?v=1713848014' )
          ).

         INSERT zmgmc_tab_art FROM TABLE @it_art.
         if sy-subrc = 0.
          out->write( 'insert successful' ).
         ELSE.
         out->write( 'error insert' ).
         ENDIF.
  ENDMETHOD.
ENDCLASS.
