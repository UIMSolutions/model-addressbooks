module models.addressbooks.entities.dir.nameaffix;

@safe:
import models.addressbooks;

class DOMTeamTypeEntity : DOOPEntity {
  mixin(EntityThis!("OMTeamTypeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
allowContact		GAB/OMTeamTypeEntity
allowContractor		GAB/OMTeamTypeEntity
allowCustomer		GAB/OMTeamTypeEntity
allowEmployee		GAB/OMTeamTypeEntity
allowVendor		GAB/OMTeamTypeEntity
isSystemCriterion		GAB/OMTeamTypeEntity
requiresAXUser		GAB/OMTeamTypeEntity
backingTable_OMTeamMembershipCriterionRelationshipId		GAB/OMTeamTypeEntity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("OMTeamTypeEntity"));

version(test_library) {
  unittest {
    assert(OMTeamTypeEntity);
  
    auto entity = OMTeamTypeEntity;
  }
}
