# A JS Button that has been converted to lightning component by lightning converter

Link to Converter: https://lightning-configuration.salesforce.com

The js button opened Account edit page and pre-filled `SLASerialNumber__c`

# Structure

## cmps
- LLC_SLA_Update_Account (the js button was called SLA_Update)
- LCC_GenericLightningComponent
- LLC_QueryApplicationEvent
- LLC_GenericApplicationEvent

## classes
- LCC_JSMQueryResultService.cls
- LCC_JSMSiteInfo.cls (DTO Class)
- LCC_JSMUserInfo.cls (DTO Class)

## quickactions
- Account.LCC_SLA_Update.quickAction
