module models.addressbooks.entities.dir.relationshiptype;

@safe:
import models.addressbooks;

class DDirPartyRelationshipEntity : DOOPEntity {
  mixin(EntityThis!("DirPartyRelationshipEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
legalEntityDataArea		GAB/DirPartyRelationshipEntity
relationshipType		GAB/DirPartyRelationshipEntity
validFrom		GAB/DirPartyRelationshipEntity
validTo		GAB/DirPartyRelationshipEntity
childPartyId		GAB/DirPartyRelationshipEntity
childParty		GAB/DirPartyRelationshipEntity
parentParty		GAB/DirPartyRelationshipEntity
nullableParentPartyId		GAB/DirPartyRelationshipEntity
parentPartyId		GAB/DirPartyRelationshipEntity
systemType		GAB/DirPartyRelationshipEntity
backingTable_DirPartyRelationshipRelationshipId		GAB/DirPartyRelationshipEntity
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
