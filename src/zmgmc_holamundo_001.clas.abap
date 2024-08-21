CLASS zmgmc_holamundo_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmgmc_holamundo_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  out->write( 'hola mundo en abap cloud' ).

  ENDMETHOD.
ENDCLASS.
