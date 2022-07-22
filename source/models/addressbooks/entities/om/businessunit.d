module models.addressbooks.entities.om.businessunit;

@safe:
import models.addressbooks;

class DDirNameAffixEntity : DOOPEntity {
  mixin(EntityThis!("DirNameAffixEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "Affix":	StringAttribute,
        "Type":	StringAttribute,
        "BackingTable_DirNameAffixRelationshipId":	StringAttribute,
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("DirNameAffixEntity"));

version(test_library) {
  unittest {
    assert(DirNameAffixEntity);
  
    auto entity = DirNameAffixEntity;
  }
}