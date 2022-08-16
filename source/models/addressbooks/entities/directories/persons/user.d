module models.addressbooks.entities.directories.persons.user;

@safe:
import models.addressbooks;

class DDirPersonUserEntity : DOOPEntity {
  mixin(EntityThis!("DirPersonUserEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "userId": StringAttribute, 
        "partyNumber": StringAttribute, 
        "personName": StringAttribute, 
        "personNameAlias": StringAttribute, 
        "userEmail": StringAttribute, 
        "personPrimaryEmail": StringAttribute, 
        "validFrom": StringAttribute, 
        "validTo": StringAttribute, 
        "user": StringAttribute, 
        "personParty": StringAttribute, 
        "relationship_DirPersonBaseEntityRelationshipId": StringAttribute, 
        "relationship_SystemUserEntityRelationshipId": StringAttribute, 
        "backingTable_DirPersonUserRelationshipId": StringAttribute, 
      ])
      .registerPath("addressbooks_directories.persons.users");
  }
}
mixin(EntityCalls!("DirPersonUserEntity"));

version(test_library) {
  unittest {
    assert(DirPersonUserEntity);
  
    auto entity = DirPersonUserEntity;
  }
}