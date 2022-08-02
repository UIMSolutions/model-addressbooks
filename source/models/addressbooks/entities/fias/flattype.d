module models.addressbooks.entities.fias.flattype;

@safe:
import models.addressbooks;

class DFiasFlatTypeEntity : DOOPEntity {
  mixin(EntityThis!("FiasFlatTypeEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "flTypeId": StringAttribute,
        "shortName": StringAttribute,
        "backingTable_FiasFlatTypeRelationshipId": StringAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_fias.flattypes");
  }
}
mixin(EntityCalls!("FiasFlatTypeEntity"));

version(test_library) {
  unittest {
    assert(FiasFlatTypeEntity);
  
    auto entity = FiasFlatTypeEntity;
  }
}
