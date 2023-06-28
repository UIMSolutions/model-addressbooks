module models.addressbooks.entities.branch;

import models.addressbooks;

@safe:
class DBranchEntity : DEntity {
  mixin(EntityThis!("BranchEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "vendorAccount": StringAttribute, //
        "alcoholRegulationAuthority": StringAttribute, //
        "separateDivisionId": UUIDAttribute, //
        "independent": StringAttribute, //
        "backingTable_Branches_RURelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("addressbooks_branches");
  }
}
mixin(EntityCalls!("BranchEntity"));

version(test_library) { unittest {
    assert(BranchEntity);
  
    auto entity = BranchEntity;
  }
}