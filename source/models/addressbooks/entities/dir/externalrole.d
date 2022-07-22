module models.addressbooks.entities.dir.externalrole;

@safe:
import models.addressbooks;

class DDirExternalRoleEntity : DOOPEntity {
  mixin(EntityThis!("DirExternalRoleEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "Role": StringAttribute,
        "Type":	StringAttribute,
        "BackingTable_DirExternalRoleRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_dir.externalrole");
  }
}
mixin(EntityCalls!("DirExternalRoleEntity"));

version(test_library) {
  unittest {
    assert(DirExternalRoleEntity);
  
    auto entity = DirExternalRoleEntity;
  }
}