module models.addressbooks.entities.fias.estatestatus;

@safe:
import models.addressbooks;

class DFiasEstateStatusEntity : DOOPEntity {
  mixin(EntityThis!("FiasEstateStatusEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
estStatId		GAB/FiasEstateStatusEntity
backingTable_FiasEstateStatusRelationshipId		GAB/FiasEstateStatusEntity
relationship_PrimaryCompanyContextRelationshipId		GAB/FiasEstateStatusEntity
      ])
      .registerPath("addressbooks_fias.estatestatu");
  }
}
mixin(EntityCalls!("FiasEstateStatusEntity"));

version(test_library) {
  unittest {
    assert(FiasEstateStatusEntity);
  
    auto entity = FiasEstateStatusEntity;
  }
}
