@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Billing Doc Item'
@Metadata.ignorePropagatedAnnotations: true
define view entity Zali_I_BILL_ITEM
  as select from zali_bill_item
  association to parent Zali_I_Bill_Header as _header on $projection.BillId = _header.BillId
{
  key bill_id            as BillId,
  key item_no            as ItemNo,
      material_id        as MaterialId,
      description        as Description,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      quantity           as Quantity,
      @Semantics.amount.currencyCode : 'Currency'
      item_amount        as ItemAmount,
      currency           as Currency,
      uom                as Uom,
      @Semantics.user.createdBy: true
      createdby          as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      createdat          as CreateDat,
      @Semantics.user.lastChangedBy: true
      lastchangedby      as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat      as LastChangeDat,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      locallastchangedat as LocalLastChangeDat,
      _header
}
