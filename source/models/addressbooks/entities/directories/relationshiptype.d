module models.addressbooks.entities.dir.relationshiptype;

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
        "childPartyId": UUIDAttribute, 
        "childParty": StringAttribute, 
        "parentParty": StringAttribute, 
        "nullableParentPartyId": UUIDAttribute, 
        "parentPartyId": UUIDAttribute, 
        "systemType": StringAttribute, 
        "backingTable_DirPartyRelationshipRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks.dir.relationshiptypes");
  }
}
mixin(EntityCalls!("DirPartyRelationshipEntity"));

version(test_library) {
  unittest {
    assert(DirPartyRelationshipEntity);
  
    auto entity = DirPartyRelationshipEntity;
  }
}
