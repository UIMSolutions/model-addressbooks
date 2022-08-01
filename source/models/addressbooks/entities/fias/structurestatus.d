module models.addressbooks.entities.fias.structurestatus;

@safe:
import models.addressbooks;

class DFiasStructureStatusEntity : DOOPEntity {
  mixin(EntityThis!("FiasStructureStatusEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
strStatId		GAB/FiasStructureStatusEntity
shortName		GAB/FiasStructureStatusEntity
backingTable_FiasStructureStatusRelationshipId		GAB/FiasStructureStatusEntity
relationship_PrimaryCompanyContextRelationshipId		GAB/FiasStructureStatusEntity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("FiasStructureStatusEntity"));

version(test_library) {
  unittest {
    assert(FiasStructureStatusEntity);
  
    auto entity = FiasStructureStatusEntity;
  }
}
