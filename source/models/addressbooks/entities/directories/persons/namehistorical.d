module models.addressbooks.entities.directories.persons.namehistorical;

import models.addressbooks;

@safe:
class DDirPersonNameHistoricalEntity : DEntity {
  mixin(EntityThis!("DirPersonNameHistoricalEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "firstName": StringAttribute, 
        "lastNamePrefix": StringAttribute, 
        "lastName": StringAttribute, 
        "middleName": StringAttribute, 
        "person": StringAttribute, 
        "validFrom": StringAttribute, 
        "validTo": StringAttribute, 
        "partyNumber": StringAttribute, 
        "backingTable_DirPersonNameRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_directories.persons.namehistoricals");
  }
}
mixin(EntityCalls!("DirPersonNameHistoricalEntity"));

version(test_library) { unittest {
    assert(DirPersonNameHistoricalEntity);
  
    auto entity = DirPersonNameHistoricalEntity;
  }
}