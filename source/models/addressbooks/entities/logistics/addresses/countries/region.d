module models.addressbooks.entities.logistics.addresses.countries.region;

@safe:
import models.addressbooks;

class DLogisticsAddressCountryRegionEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsAddressCountryRegionEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "countryRegion": StringAttribute, 
        "addressFormat": StringAttribute, 
        "timeZone": StringAttribute, 
        "useZipPlus4": StringAttribute, 
        "isoCode": StringAttribute, 
        "currencyCode": StringAttribute, 
        "parentCountryRegion": StringAttribute, 
        "brazilCentralBankCountryCode": StringAttribute, 
        "oksmCode_RU": StringAttribute, 
        "backingTable_LogisticsAddressCountryRegionRelationshipId": StringAttribute, 
      ])
      .registerPath("addressbooks_logistics.addresses.countries.regions");
  }
}
mixin(EntityCalls!("LogisticsAddressCountryRegionEntity"));

version(test_library) { unittest {
  assert(LogisticsAddressCountryRegionEntity);

  auto entity = LogisticsAddressCountryRegionEntity;
}}
