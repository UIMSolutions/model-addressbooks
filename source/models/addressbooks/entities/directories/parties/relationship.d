module models.addressbooks.entities.directories.parties.relationship;

@safe:
import models.addressbooks;

class DDirPartyRelationshipEntity : DOOPEntity {
  mixin(EntityThis!("DirPartyRelationshipEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "legalEntityDataArea": StringAttribute, 
        "relationshipType": StringAttribute, 
        "validFrom": StringAttribute, 
        "validTo": StringAttribute, 
        "childPartyId": UUIDAttribute, 
        "childParty": StringAttribute, 
        "parentParty": StringAttribute, 
        "nullableParentPartyId": UUIDAttribute, 
        "parentPartyId": UUIDAttribute, 
        "systemType": StringAttribute, 
        "backingTable_DirPartyRelationshipRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_directories.parties.relationships");
  }
}
mixin(EntityCalls!("DirPartyRelationshipEntity"));

version(test_library) { unittest {
    assert(DirPartyRelationshipEntity);
  
    auto entity = DirPartyRelationshipEntity;
  }
}