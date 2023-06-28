module models.addressbooks.entities.dir.nameaffix;

import models.addressbooks;

@safe:
class DOMTeamTypeEntity : DOOPEntity {
  mixin(EntityThis!("OMTeamTypeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "allowContact". StringAttribute, //		GAB/OMTeamTypeEntity
        "allowContractor". StringAttribute, //		GAB/OMTeamTypeEntity
        "allowCustomer". StringAttribute, //		GAB/OMTeamTypeEntity
        "allowEmployee". StringAttribute, //		GAB/OMTeamTypeEntity
        "allowVendor". StringAttribute, //		GAB/OMTeamTypeEntity
        "isSystemCriterion". StringAttribute, //		GAB/OMTeamTypeEntity
        "requiresAXUser". StringAttribute, //		GAB/OMTeamTypeEntity
        "backingTable_OMTeamMembershipCriterionRelationshipId". StringAttribute, //		GAB/OMTeamTypeEntity
      ])
      .registerPath("addressbooks.dir.nameaffix");
  }
}
mixin(EntityCalls!("OMTeamTypeEntity"));

version(test_library) { unittest {
    assert(OMTeamTypeEntity);
  
    auto entity = OMTeamTypeEntity;
  }
}
