module models.addressbooks.entities.dir.persons.namehistorical;

@safe:
import models.addressbooks;

class DDirPersonNameHistoricalEntity : DOOPEntity {
  mixin(EntityThis!("DirPersonNameHistoricalEntity"));
  
  override void initialize() {
    super.initialize;

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

version(test_library) {
  unittest {
    assert(DirPersonNameHistoricalEntity);
  
    auto entity = DirPersonNameHistoricalEntity;
  }
}