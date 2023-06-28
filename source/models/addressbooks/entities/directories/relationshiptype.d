module models.addressbooks.entities.directories.relationshiptype;

import models.addressbooks;

@safe:
class DDirectoryPartyRelationshipEntity : DEntity {
  mixin(EntityThis!("DirectoryPartyRelationshipEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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

version(test_library) { unittest {
    assert(DirectoryPartyRelationshipEntity);
  
    auto entity = DirectoryPartyRelationshipEntity;
  }
}
