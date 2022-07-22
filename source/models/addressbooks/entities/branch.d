module models.addressbooks.entities.branch;

@safe:
import models.applications;

class DBranchEntity : DOOPEntity {
  mixin(EntityThis!("BranchEntity"));
  
  override void initialize() {
    super.initialize;

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

version(test_library) {
  unittest {
    assert(BranchEntity);
  
    auto entity = BranchEntity;
  }
}