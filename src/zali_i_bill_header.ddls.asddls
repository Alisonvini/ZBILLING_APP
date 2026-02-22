@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Entity of billing Header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Zali_I_Bill_Header
  as select from zali_bill_header
  composition [0..*] of Zali_I_BILL_ITEM as _item
{
  key bill_id            as BillId,
      bill_type          as BillType,
      bill_date          as BillDate,
      customer_id        as CustomerId,
      @Semantics.amount.currencyCode : 'Currency'
      net_amount         as NetAmount,
      currency           as Currency,
      sales_org          as SalesOrg,
      @Semantics.user.createdBy: true
      createdby          as Createdby,
      @Semantics.systemDateTime.createdAt: true
      createdat          as Createdat,
      @Semantics.user.lastChangedBy: true
      lastchangedby      as Lastchangedby,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat      as Lastchangedat,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      locallastchangedat as Locallastchangedat,
      _item
      //    _association_name // Make association public
}
