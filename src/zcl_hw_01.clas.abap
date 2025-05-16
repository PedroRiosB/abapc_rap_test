CLASS zcl_hw_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hw_01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*    out->write( 'Hello World 2' ).
*    out->write(  '12345               ' ).    "Text Literal   (Type C)
*    out->write(  `12345               ` ).    "String Literal (Type STRING)
*    out->write( 12345 ).

     DATA number1 TYPE i VALUE -8.
     DATA number2 TYPE i VALUE 3.
     DATA(result) = number1 / number2.
     result = result.
     DATA(output) = |{ number1 } / { number2 } = { result }|.
     out->write( output ).

  ENDMETHOD.
ENDCLASS.
