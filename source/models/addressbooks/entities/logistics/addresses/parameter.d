module models.addressbooks.entities.logistics.addresses.parameter;

@safe:
import models.addressbooks;

class DLogisticsAddressPostalCodeEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsAddressPostalCodeEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "city": StringAttribute,
        "cityId": StringAttribute,
        "cityAlias": StringAttribute,
        "countryRegionId": StringAttribute,
        "countyId": StringAttribute,
        "district": StringAttribute,
        "districtId": StringAttribute,
        "stateId": StringAttribute,
        "street": StringAttribute,
        "streetNumberMinimum": StringAttribute,
        "streetNumberMaximum": StringAttribute,
        "streetNumberValidity": StringAttribute,
        "timeZone": StringAttribute,
        "zipCode": StringAttribute,
        "backingTable_LogisticsAddressZipCodeRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.addresses.parameters");
  }
}
mixin(EntityCalls!("LogisticsAddressPostalCodeEntity"));

version(test_library) {
  unittest {
    assert(LogisticsAddressPostalCodeEntity);
  
    auto entity = LogisticsAddressPostalCodeEntity;
  }
}
