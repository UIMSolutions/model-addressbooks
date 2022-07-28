module models.addressbooks.entities.fias.flattype;

@safe:
import models.addressbooks;

class DFiasFlatTypeEntity : DOOPEntity {
  mixin(EntityThis!("FiasFlatTypeEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
flTypeId		GAB/FiasFlatTypeEntity
shortName		GAB/FiasFlatTypeEntity
backingTable_FiasFlatTypeRelationshipId		GAB/FiasFlatTypeEntity
relationship_PrimaryCompanyContextRelationshipId		GAB/FiasFlatTypeEntity
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
