module models.addressbooks.entities.logistics.addresses.county;

import models.addressbooks;

@safe:
class DLogisticsAddressCountyEntity : DEntity {
  mixin(EntityThis!("LogisticsAddressCountyEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "countryRegionId": StringAttribute,
        "stateId": StringAttribute,
        "countyId": StringAttribute,
        "esCountryCode": StringAttribute,
        "itCountyCode": StringAttribute,
        "relationship_CountryRegionRelationshipId": StringAttribute,
        "relationship_StateRelationshipId": StringAttribute,
        "backingTable_LogisticsAddressCountyRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.addresses.counties");
  }
}
mixin(EntityCalls!("LogisticsAddressCountyEntity"));

version(test_library) { unittest {
    assert(LogisticsAddressCountyEntity);
  
    auto entity = LogisticsAddressCountyEntity;
  }
}
