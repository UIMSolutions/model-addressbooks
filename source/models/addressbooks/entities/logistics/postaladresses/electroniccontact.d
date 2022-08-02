module models.addressbooks.entities.logistics.postaladresses.electroniccontact;

@safe:
import models.addressbooks;

class DDirNameAffixEntity : DOOPEntity {
  mixin(EntityThis!("DirNameAffixEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
...
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