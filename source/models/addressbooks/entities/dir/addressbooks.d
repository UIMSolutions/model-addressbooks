module models.addressbooks.entities.dir.addressbooks;

@safe:
import models.addressbooks;

class DDirAddressBooksEntity : DOOPEntity {
  mixin(EntityThis!("DirAddressBooksEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "system": StringAttribute, 
        "backingTable_DirAddressBookRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_dir.addressbook");
  }
}
mixin(EntityCalls!("DirAddressBooksEntity"));

version(test_library) {
  unittest {
    assert(DirAddressBooksEntity);
  
    auto entity = DirAddressBooksEntity;
  }
}