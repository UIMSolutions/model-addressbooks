module models.addressbooks.entities.directories.relationshiptype;

@safe:
import models.addressbooks;

class DDirectoryPartyRelationshipEntity : DOOPEntity {
  mixin(EntityThis!("DirectoryPartyRelationshipEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize;

    this
      .addValues([ // individual values
        "relationshipAToB":	StringAttribute, 
        "partyAType":	StringAttribute, 
        "symmetric":	StringAttribute, 
        "relationshipBToA":	StringAttribute, 
        "partyBType":	StringAttribute, 
        "systemType":	StringAttribute, 
        "backingTable_DirRelationshipTypeTableRelationshipId": UUIDAttribute, 
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
