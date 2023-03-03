module models.addressbooks.entities.fias.flattype;

@safe:
import models.addressbooks;

class DFiasFlatTypeEntity : DOOPEntity {
  mixin(EntityThis!("FiasFlatTypeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "flTypeId": UUIDAttribute,
        "shortName": StringAttribute,
        "backingTable_FiasFlatTypeRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_fias.flattypes");
  }
}
mixin(EntityCalls!("FiasFlatTypeEntity"));

version(test_library) { unittest {
    assert(FiasFlatTypeEntity);
  
    auto entity = FiasFlatTypeEntity;
  }
}
