module models.addressbooks.entities.dir.nameaffix;

import models.addressbooks;

@safe:
class DDirNameAffixEntity : DOOPEntity {
  mixin(EntityThis!("DirNameAffixEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "Affix": StringAttribute, //		GAB/DirNameAffixEntity
        "Type": StringAttribute, //		GAB/DirNameAffixEntity
        "Description": StringAttribute, //		GAB/DirNameAffixEntity
        "BackingTable_DirNameAffixRelationshipId": StringAttribute, //		GAB/DirNameAffixEntity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("DirNameAffixEntity"));

version(test_library) { unittest {
    assert(DirNameAffixEntity);
  
    auto entity = DirNameAffixEntity;
  }
}
