module models.addressbooks.entities.companyinfo;

import models.addressbooks;

@safe:
class DCompanyInfoEntity : DEntity {
  mixin(EntityThis!("CompanyInfoEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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

version(test_library) { unittest {
    assert(CompanyInfoEntity);
  
    auto entity = CompanyInfoEntity;
  }
}