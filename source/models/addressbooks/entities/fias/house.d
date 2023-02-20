module models.addressbooks.entities.fias.house;

@safe:
import models.addressbooks;

class DFiasHouseEntity : DOOPEntity {
  mixin(EntityThis!("FiasHouseEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize;

    this
      .addValues([ // individual values
        "houseId": UUIDAttribute,
        "houseGuid": StringAttribute,
        "aOGuid": UUIDAttribute,
        "houseNum": StringAttribute,
        "buildNum": StringAttribute,
        "strucNum": StringAttribute,
        "divType": StringAttribute,
        "estStatus": StringAttribute,
        "strStatus": StringAttribute,
        "postalCode": StringAttribute,
        "iFNSFL": StringAttribute,
        "terrIFNSFL": StringAttribute,
        "oKATO": StringAttribute,
        "startDate": StringAttribute,
        "endDate": StringAttribute,
        "backingTable_FiasHouseRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_fias.houses");
  }
}
mixin(EntityCalls!("FiasHouseEntity"));

version(test_library) {
  unittest {
    assert(FiasHouseEntity);
  
    auto entity = FiasHouseEntity;
  }
}
