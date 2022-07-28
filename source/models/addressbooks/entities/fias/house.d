module models.addressbooks.entities.fias.house;

@safe:
import models.addressbooks;

class DFiasHouseEntity : DOOPEntity {
  mixin(EntityThis!("FiasHouseEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
houseId		GAB/FiasHouseEntity
houseGuid		GAB/FiasHouseEntity
aOGuid		GAB/FiasHouseEntity
houseNum		GAB/FiasHouseEntity
buildNum		GAB/FiasHouseEntity
strucNum		GAB/FiasHouseEntity
divType		GAB/FiasHouseEntity
estStatus		GAB/FiasHouseEntity
strStatus		GAB/FiasHouseEntity
postalCode		GAB/FiasHouseEntity
iFNSFL		GAB/FiasHouseEntity
terrIFNSFL		GAB/FiasHouseEntity
oKATO		GAB/FiasHouseEntity
startDate		GAB/FiasHouseEntity
endDate		GAB/FiasHouseEntity
backingTable_FiasHouseRelationshipId		GAB/FiasHouseEntity
relationship_PrimaryCompanyContextRelationshipId		GAB/FiasHouseEntity
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
