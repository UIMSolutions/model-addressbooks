module models.addressbooks.entities.directories.addressbooks;

import models.addressbooks;

@safe:
class DDirectoryAddressBooksEntity : DOOPEntity {
  mixin(EntityThis!("DirectoryAddressBooksEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "system": StringAttribute, 
        "backingTable_DirAddressBookRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_directories.addressbooks");
  }
}
mixin(EntityCalls!("DirectoryAddressBooksEntity"));

version(test_model_addressbooks) { unittest {
  assert(DirectoryAddressBooksEntity);
  
  auto entity = DirectoryAddressBooksEntity;
}}
