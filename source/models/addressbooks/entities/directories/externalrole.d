module models.addressbooks.entities.directories.externalrole;

@safe:
import models.addressbooks;

class DDirectoriesExternalRoleEntity : DOOPEntity {
  mixin(EntityThis!("DirectoriesExternalRoleEntity"));
  
  override void initialize() {
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
mixin(EntityCalls!("DirectoriesExternalRoleEntity"));

version(test_library) {
  unittest {
    assert(DirectoriesExternalRoleEntity);
  
    auto entity = DirectoriesExternalRoleEntity;
  }
}
