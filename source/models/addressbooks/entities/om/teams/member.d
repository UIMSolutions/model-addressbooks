module models.addressbooks.entities.dir.nameaffix;

import models.addressbooks;

@safe:
class DOMTeamMemberEntity : DOOPEntity {
  mixin(EntityThis!("OMTeamMemberEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
childParty		GAB/OMTeamMemberV2Entity
parentParty		GAB/OMTeamMemberV2Entity
validFrom		GAB/OMTeamMemberV2Entity
validTo		GAB/OMTeamMemberV2Entity
teamName		GAB/OMTeamMemberV2Entity
teamMemberName		GAB/OMTeamMemberV2Entity
teamMemberPartyNumber		GAB/OMTeamMemberV2Entity
isTeamLead		GAB/OMTeamMemberV2Entity
relationship_TeamRelationshipId		GAB/OMTeamMemberV2Entity
relationship_PersonRelationshipId		GAB/OMTeamMemberV2Entity
backingTable_DirPartyRelationshipRelationshipId		GAB/OMTeamMemberV2Entity
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
