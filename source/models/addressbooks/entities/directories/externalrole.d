module models.addressbooks.entities.directories.externalrole;

@safe:
import models.addressbooks;

class DDirectoryExternalRoleEntity : DOOPEntity {
  mixin(EntityThis!("DirectoryExternalRoleEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize;

    this
      .addValues([ // individual values
        "role": StringAttribute,
        "type":	StringAttribute,
        "backingTable_DirExternalRoleRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_directories.externalroles");
  }
}
mixin(EntityCalls!("DirectoryExternalRoleEntity"));

version(test_library) {
  unittest {
    assert(DirectoryExternalRoleEntity);
  
    auto entity = DirectoryExternalRoleEntity;
  }
}
