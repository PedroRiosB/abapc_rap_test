@AbapCatalog.sqlViewName: 'ZPRBCDSART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Articulos'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZPRB_CDS_ART as select from zprb_db_art
{
    key id_art as IdArt,
    desc1 as Desc1,
    desc2 as Desc2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
    case 
    when stock = 0 then 0
    when stock between 1 and 10 then 1
    when stock between 11 and 99 then 2
    when stock >= 100 then 3
    else 0
    end as status
    
}
