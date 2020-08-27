CLASS zcl_generate_ztable1_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_ztable1_data IMPLEMENTATION.
 METHOD if_oo_adt_classrun~main.
    DATA:it_ztable1 TYPE TABLE OF ZTABLE1.

* fill internal table (itab)
    it_ztable1 = VALUE #(
        ( client  = '1' field1 = '1' field2 = 't' field3 = 'AAA123' field4 = 'AAA' field5 = '4000000' )
        ( client  = '2' field1 = '2' field2 = 'f' field3 = 'BBB123' field4 = 'BBB' field5 = '4000001' )
     ).

* Delete the possible entries in the database table - in case it was already filled
    DELETE FROM ZTABLE1.

* insert the new table entries
    INSERT ZTABLE1 FROM TABLE @it_ztable1.

* check the result
    SELECT * FROM ZTABLE1 INTO TABLE @it_ztable1.
*    out->write( sy-dbcnt ).
    out->write( 'data inserted successfully!').

ENDMETHOD.
ENDCLASS.
