module models.addressbooks.entities.directories.parameter;

import models.addressbooks;

@safe:
class DDirectoryParametersEntity : DOOPEntity {
  mixin(EntityThis!("DirectoryParametersEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "key": StringAttribute,
        "nameSequence": StringAttribute,
        "deletePartiesWithNoRole": StringAttribute,
        "useDuplicateCheck": StringAttribute,
        "dunsDisplayOnAddress": StringAttribute,
        "dunsCheckUnique": StringAttribute,
        "defaultPartyType": StringAttribute,
        "enableEditForExternallyMaintainedFields": StringAttribute,
        "backingTable_DirParametersRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_directories.parameters");
  }
}
mixin(EntityCalls!("DirectoryParametersEntity"));

version(test_library) { unittest {
    assert(DirectoryParametersEntity);
  
    auto entity = DirectoryParametersEntity;
  }
}
