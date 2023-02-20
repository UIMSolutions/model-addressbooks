module models.addressbooks.entities.logistics.addresses.state;

@safe:
import models.addressbooks;

class DLogisticsAddressStateEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsAddressStateEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize;

    this
      .addValues([ // individual values
        "countryRegionId": StringAttribute,
        "state": StringAttribute,
        "timeZone": StringAttribute,
        "intrastatCode": StringAttribute,
        "brazilStateCode": StringAttribute,
        "relationship_CountryRegionRelationshipId": StringAttribute,
        "backingTable_LogisticsAddressStateRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.locationroles");
  }
}
mixin(EntityCalls!("LogisticsAddressStateEntity"));

version(test_library) {
  unittest {
    assert(LogisticsAddressStateEntity);
  
    auto entity = LogisticsAddressStateEntity;
  }
}
