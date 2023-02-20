module models.addressbooks.entities.logistics.addresses.district;

@safe:
import models.addressbooks;

class DLogisticsAddressDistrictEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsAddressDistrictEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "city":	StringAttribute,
        "cityKey":	StringAttribute,
        "district":	StringAttribute,
        "countryRegionId":	StringAttribute,
        "countyId":	StringAttribute,
        "stateId":	StringAttribute,
        "relationship_CountryRegionRelationshipId":	StringAttribute,
        "relationship_StateRelationshipId":	StringAttribute,
        "relationship_CountyRelationshipId":	StringAttribute,
        "relationship_CityRelationshipId":	StringAttribute,
        "backingTable_LogisticsAddressDistrictRelationshipId":	StringAttribute,
      ])
      .registerPath("addressbooks_logistics.addresses.districts");
  }
}
mixin(EntityCalls!("LogisticsAddressDistrictEntity"));

version(test_library) {
  unittest {
    assert(LogisticsAddressDistrictEntity);
  
    auto entity = LogisticsAddressDistrictEntity;
  }
}
