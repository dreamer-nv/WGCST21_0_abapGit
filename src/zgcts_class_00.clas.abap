class ZGCTS_CLASS_00 definition
  public
  final
  create public .

public section.

  types:
    mtt_tadir_view TYPE STANDARD TABLE OF Z_TADIR_view .

  methods SELECT_SOME .
  class-methods GET_OBJECT_LIST
    importing
      !IV_DEVCLASS type DEVCLASS
    exporting
      !ET_TABLE type MTT_TADIR_VIEW .
protected section.
private section.
ENDCLASS.



CLASS ZGCTS_CLASS_00 IMPLEMENTATION.


METHOD GET_OBJECT_LIST.

" start AUnit tests - Ctrl+Shift+F10
" user to call target services - i079666

" method body to check AUnit test
SELECT * FROM Z_TADIR_CDS
UP TO 10 ROWS
into TABLE @et_table
WHERE devclass = @iv_devclass.

" method adding just to check ATC check
" TABLES: tcurc.
*
*DATA: lv_isocd type ISOCD.
*
*SELECT SINGLE land1 FROM t001 INTO @DATA(lv_land) WHERE bukrs EQ '1000'.
*SELECT SINGLE land1 FROM t001 INTO lv_land WHERE spras EQ 'EN'.



ENDMETHOD.


  METHOD SELECT_SOME.
    "!!! uncomment one of these rows to manage ATC error (PERFORMANCE_CHECKLIST_HDB)
    " row w/ error 1
    SELECT * FROM t001 INTO TABLE @DATA(lt_t001).
    " row w/o error
    "SELECT bukrs, waers FROM t001 INTO TABLE @DATA(lt_t001).
  ENDMETHOD.
ENDCLASS.
