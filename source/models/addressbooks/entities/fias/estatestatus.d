module models.addressbooks.entities.fias.estatestatus;

@safe:
import models.addressbooks;

class DFiasEstateStatusEntity : DOOPEntity {
  mixin(EntityThis!("FiasEstateStatusEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "estStatId": UUIDAttribute,
        "backingTable_FiasEstateStatusRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_fias.estatestatuses");
  }
}
mixin(EntityCalls!("FiasEstateStatusEntity"));

version(test_library) {
  unittest {
    assert(FiasEstateStatusEntity);
  
    auto entity = FiasEstateStatusEntity;
  }
}
