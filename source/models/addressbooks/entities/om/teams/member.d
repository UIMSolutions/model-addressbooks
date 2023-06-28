module models.addressbooks.entities.dir.nameaffix;

import models.addressbooks;

@safe:
class DOMTeamMemberEntity : DEntity {
  mixin(EntityThis!("OMTeamMemberEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "childParty": StringAttribute, //		GAB/OMTeamMemberV2Entity
        "parentParty": StringAttribute, //		GAB/OMTeamMemberV2Entity
        "validFrom": StringAttribute, //		GAB/OMTeamMemberV2Entity
        "validTo": StringAttribute, //		GAB/OMTeamMemberV2Entity
        "teamName": StringAttribute, //		GAB/OMTeamMemberV2Entity
        "teamMemberName": StringAttribute, //		GAB/OMTeamMemberV2Entity
        "teamMemberPartyNumber": StringAttribute, //		GAB/OMTeamMemberV2Entity
        "isTeamLead": StringAttribute, //		GAB/OMTeamMemberV2Entity
        "relationship_TeamRelationshipId": StringAttribute, //		GAB/OMTeamMemberV2Entity
        "relationship_PersonRelationshipId": StringAttribute, //		GAB/OMTeamMemberV2Entity
        "backingTable_DirPartyRelationshipRelationshipId": StringAttribute, //		GAB/OMTeamMemberV2Entity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("OMTeamMemberEntity"));

version(test_library) { unittest {
    assert(OMTeamMemberEntity);
  
    auto entity = OMTeamMemberEntity;
  }
}
