module models.addressbooks.entities.dir.parties.relationship;

@safe:
import models.addressbooks;

class DDirPartyRelationshipEntity : DOOPEntity {
  mixin(EntityThis!("DirPartyRelationshipEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "legalEntityDataArea": StringAttribute, 
        "relationshipType": StringAttribute, 
        "validFrom": StringAttribute, 
        "validTo": StringAttribute, 
        "childPartyId": StringAttribute, 
        "childParty": StringAttribute, 
        "parentParty": StringAttribute, 
        "nullableParentPartyId": StringAttribute, 
        "parentPartyId": StringAttribute, 
        "systemType": StringAttribute, 
        "backingTable_DirPartyRelationshipRelationshipId": StringAttribute, 
      ])
      .registerPath("addressbooks_directories.parties.relationships");
  }
}
mixin(EntityCalls!("DirPartyRelationshipEntity"));

version(test_library) {
  unittest {
    assert(DirPartyRelationshipEntity);
  
    auto entity = DirPartyRelationshipEntity;
  }
}