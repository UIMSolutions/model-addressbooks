module models.addressbooks.entities.systemsecurityuserroleorganization;

// Bug? TODO

@safe:
import models.addressbooks;

class DDirNameAffixEntity : DOOPEntity {
  mixin(EntityThis!("DirNameAffixEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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

version(test_library) { unittest {
    assert(DirNameAffixEntity);
  
    auto entity = DirNameAffixEntity;
  }
}
