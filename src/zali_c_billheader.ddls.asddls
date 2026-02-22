@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View of Billing Doc Header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Zali_C_BillHeader
  as projection on Zali_I_Bill_Header
{
  key BillId,
      BillType,
      BillDate,
      CustomerId,
      @Semantics.amount.currencyCode: 'Currency'
      NetAmount,
      Currency,
      SalesOrg,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchangedat,
      _item : redirected to composition child ZALI_c_BILL_ITEM
}
