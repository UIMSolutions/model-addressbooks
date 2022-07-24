module models.addressbooks.entities.fias.house;

@safe:
import models.addressbooks;

class DFiasHouseEntity : DOOPEntity {
  mixin(EntityThis!("FiasHouseEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "Affix":	StringAttribute,
        "Type":	StringAttribute,
        "BackingTable_DirNameAffixRelationshipId":	StringAttribute,
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
