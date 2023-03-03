module models.addressbooks.entities.fias.structurestatus;

@safe:
import models.addressbooks;

class DFiasStructureStatusEntity : DOOPEntity {
  mixin(EntityThis!("FiasStructureStatusEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "strStatId": UUIDAttribute,
        "shortName": StringAttribute,
        "backingTable_FiasStructureStatusRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_fias.structurestatuses");
  }
}
mixin(EntityCalls!("FiasStructureStatusEntity"));

version(test_library) { unittest {
    assert(FiasStructureStatusEntity);
  
    auto entity = FiasStructureStatusEntity;
  }
}
