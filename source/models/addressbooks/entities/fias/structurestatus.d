module models.addressbooks.entities.fias.structurestatus;

@safe:
import models.addressbooks;

class DFiasStructureStatusEntity : DOOPEntity {
  mixin(EntityThis!("FiasStructureStatusEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "strStatId": StringAttribute,
        "shortName": StringAttribute,
        "backingTable_FiasStructureStatusRelationshipId": StringAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_fias.structurestatuses");
  }
}
mixin(EntityCalls!("FiasStructureStatusEntity"));

version(test_library) {
  unittest {
    assert(FiasStructureStatusEntity);
  
    auto entity = FiasStructureStatusEntity;
  }
}
