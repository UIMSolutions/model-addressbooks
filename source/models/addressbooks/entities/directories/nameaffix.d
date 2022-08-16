module models.addressbooks.entities.dir.nameaffix;

@safe:
import models.addressbooks;

class DDirNameAffixEntity : DOOPEntity {
  mixin(EntityThis!("DirNameAffixEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "affix":	StringAttribute,
        "type":	StringAttribute,
        "backingTable_DirNameAffixRelationshipId":	UUIDAttribute,
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