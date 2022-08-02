module models.addressbooks.entities.dir.parties.base;

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
      .registerPath("addressbooks_dir.dir.parties.bases");
  }
}
mixin(EntityCalls!("DirAddressBooksEntity"));

version(test_library) {
  unittest {
    assert(DirAddressBooksEntity);
  
    auto entity = DirAddressBooksEntity;
  }
}