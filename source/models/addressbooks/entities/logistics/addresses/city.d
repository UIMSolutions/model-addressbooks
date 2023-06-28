module models.addressbooks.entities.logistics.addresses.city;

import models.addressbooks;

@safe:
class DLogisticsAddressCityEntity : DEntity {
  mixin(EntityThis!("LogisticsAddressCityEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "cityKey": StringAttribute,
        "countryRegionId": UUIDAttribute,
        "stateId": UUIDAttribute,
        "countyId": UUIDAttribute,
        "brazilCityCode": StringAttribute,
        "cityInKana": StringAttribute,
        "relationship_CountryRegionRelationshipId": UUIDAttribute,
        "relationship_StateRelationshipId": UUIDAttribute,
        "relationship_CountyRelationshipId": UUIDAttribute,
        "backingTable_LogisticsAddressCityRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_logistics.addresses.cities");
  }
}
mixin(EntityCalls!("LogisticsAddressCityEntity"));

version(test_library) { unittest {
    assert(LogisticsAddressCityEntity);
  
    auto entity = LogisticsAddressCityEntity;
  }
}
