module models.addressbooks.entities.directories.nameaffix;

@safe:
import models.addressbooks;

class DDirectoryNameAffixEntity : DOOPEntity {
  mixin(EntityThis!("DirectoryNameAffixEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize;

    this
      .addValues([ // individual values
        "affix":	StringAttribute,
        "type":	StringAttribute,
        "backingTable_DirNameAffixRelationshipId":	UUIDAttribute,
      ])
      .registerPath("addressbooks_directories.nameaffixes");
  }
}
mixin(EntityCalls!("DirectoryNameAffixEntity"));

version(test_library) {
  unittest {
    assert(DirectoryNameAffixEntity);
  
    auto entity = DirectoryNameAffixEntity;
  }
}