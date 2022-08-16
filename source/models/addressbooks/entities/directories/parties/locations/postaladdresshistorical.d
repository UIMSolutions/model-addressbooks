module models.addressbooks.entities.dir.parties.locations.locationpostaladdresshistorical;

@safe:
import models.addressbooks;

class DDirAddressBooksEntity : DOOPEntity {
  mixin(EntityThis!("DirAddressBooksEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "system": StringAttribute, ....
        "backingTable_DirAddressBookRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_dir.parties.locations.locationpostaladdresshistoricals");
  }
}
mixin(EntityCalls!("DirAddressBooksEntity"));

version(test_library) {
  unittest {
    assert(DirAddressBooksEntity);
  
    auto entity = DirAddressBooksEntity;
  }
}