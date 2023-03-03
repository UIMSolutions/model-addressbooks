module models.addressbooks.entities.dir.nameaffix;

@safe:
import models.addressbooks;

class DDirNameAffixEntity : DOOPEntity {
  mixin(EntityThis!("DirNameAffixEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
Name		GAB/OMTeamV2Entity
PartyNumber		GAB/OMTeamV2Entity
TeamType		GAB/OMTeamV2Entity
Administrator		GAB/OMTeamV2Entity
IsActive		GAB/OMTeamV2Entity
Description		GAB/OMTeamV2Entity
TeamTypeName		GAB/OMTeamV2Entity
Relationship_OMTeamTypeEntityRelationshipId		GAB/OMTeamV2Entity
BackingTable_OMTeamRelationshipId		GAB/OMTeamV2Entity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("DirNameAffixEntity"));

version(test_library) { unittest {
    assert(DirNameAffixEntity);
  
    auto entity = DirNameAffixEntity;
  }
}
