@AbapCatalog.sqlViewName: 'ZI_ZTABLE1_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS view to expose the data of ZTABLE1'
define view ZI_ZTABLE1 as select from ztable1 {

    key field1          as int1field1,
    field2              as abap_booleanfield2, 
    field3              as abapchar10field3,          
    field4              as z_werks_d1field4, 
    field5              as z_sstring1_dtelfield5
}
