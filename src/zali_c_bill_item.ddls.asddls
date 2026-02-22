@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View of Billing Doc Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZALI_c_BILL_ITEM
  as projection on Zali_I_BILL_ITEM
{
  key BillId,
  key ItemNo,
      MaterialId,
      Description,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      Quantity,
      @Semantics.amount.currencyCode : 'Currency'
      ItemAmount,
      Currency,
      Uom,
      CreatedBy,
      CreateDat,
      LastChangedBy,
      LastChangeDat,
      LocalLastChangeDat,
      /* Associations */
      _header : redirected to parent Zali_C_BillHeader
}
