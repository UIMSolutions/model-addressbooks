module models.addressbooks.entities.branch;

@safe:
import models.applications;

class DBranchEntity : DOOPEntity {
  mixin(EntityThis!("BranchEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "VendorAccount": StringAttribute, //
        "AlcoholRegulationAuthority": StringAttribute, //
        "SeparateDivisionID": StringAttribute, //
        "Independent": StringAttribute, //
        "BackingTable_Branches_RURelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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