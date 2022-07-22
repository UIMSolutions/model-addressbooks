module models.addressbooks.entities.companyinfo;

@safe:
import models.applications;

class DCompanyInfoEntity : DOOPEntity {
  mixin(EntityThis!("CompanyInfoEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "knownAs": StringAttribute, 
        "languageId": UUIDAttribute, 
        "partyNumber": StringAttribute, 
        "dataArea": StringAttribute, 
        "backingTable_CompanyInfoRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_companyinfos");
  }
}
mixin(EntityCalls!("CompanyInfoEntity"));

version(test_library) {
  unittest {
    assert(CompanyInfoEntity);
  
    auto entity = CompanyInfoEntity;
  }
}