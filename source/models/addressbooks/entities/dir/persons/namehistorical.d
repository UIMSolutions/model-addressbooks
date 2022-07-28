module models.addressbooks.entities.dir.persons.namehistorical;

@safe:
import models.addressbooks;

class DDirPersonNameHistoricalEntity : DOOPEntity {
  mixin(EntityThis!("DirPersonNameHistoricalEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "FirstName": StringAttribute, 
        "LastNamePrefix": StringAttribute, 
        "LastName": StringAttribute, 
        "MiddleName": StringAttribute, 
        "Person": StringAttribute, 
        "ValidFrom": StringAttribute, 
        "ValidTo": StringAttribute, 
        "PartyNumber": StringAttribute, 
        "BackingTable_DirPersonNameRelationshipId": StringAttribute, 
      ])
      .registerPath("addressbooks_dir.persons.namehistorical");
  }
}
mixin(EntityCalls!("DirPersonNameHistoricalEntity"));

version(test_library) {
  unittest {
    assert(DirPersonNameHistoricalEntity);
  
    auto entity = DirPersonNameHistoricalEntity;
  }
}