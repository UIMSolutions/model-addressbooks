module models.addressbooks.entities.companyinfo;

@safe:
import models.applications;

class DCompanyInfoEntity : DOOPEntity {
  mixin(EntityThis!("CompanyInfoEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "KnownAs": StringAttribute, 
        "LanguageId": StringAttribute, 
        "Name": StringAttribute, 
        "PartyNumber": StringAttribute, 
        "DataArea": StringAttribute, 
        "BackingTable_CompanyInfoRelationshipId": StringAttribute, 
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