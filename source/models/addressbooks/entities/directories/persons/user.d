module models.addressbooks.entities.directories.persons.user;

@safe:
import models.addressbooks;

class DDirPersonUserEntity : DOOPEntity {
  mixin(EntityThis!("DirPersonUserEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "userId": UUIDAttribute, 
        "partyNumber": StringAttribute, 
        "personName": StringAttribute, 
        "personNameAlias": StringAttribute, 
        "userEmail": StringAttribute, 
        "personPrimaryEmail": StringAttribute, 
        "validFrom": StringAttribute, 
        "validTo": StringAttribute, 
        "user": StringAttribute, 
        "personParty": StringAttribute, 
        "relationship_DirPersonBaseEntityRelationshipId": UUIDAttribute, 
        "relationship_SystemUserEntityRelationshipId": UUIDAttribute, 
        "backingTable_DirPersonUserRelationshipId": UUIDAttribute, 
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