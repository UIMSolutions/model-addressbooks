module models.addressbooks.entities.dir.parties.locations.postaladdress;

@safe:
import models.addressbooks;

class DDirAddressBooksEntity : DOOPEntity {
  mixin(EntityThis!("DirAddressBooksEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
...
      ])
      .registerPath("addressbooks_directories.addressbook");
  }
}
mixin(EntityCalls!("DirAddressBooksEntity"));

version(test_library) {
  unittest {
    assert(DirAddressBooksEntity);
  
    auto entity = DirAddressBooksEntity;
  }
}