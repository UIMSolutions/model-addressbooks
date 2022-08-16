module models.addressbooks.entities.directories.relationshiptype;

@safe:
import models.addressbooks;

class DDirectoryPartyRelationshipEntity : DOOPEntity {
  mixin(EntityThis!("DirectoryPartyRelationshipEntity"));
  
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
      .registerPath("addressbooks_dir.relationshiptypes");
  }
}
mixin(EntityCalls!("DirectoryPartyRelationshipEntity"));

version(test_library) {
  unittest {
    assert(DirectoryPartyRelationshipEntity);
  
    auto entity = DirectoryPartyRelationshipEntity;
  }
}
