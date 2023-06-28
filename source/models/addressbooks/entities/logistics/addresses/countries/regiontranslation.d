module models.addressbooks.entities.logistics.addresses.countries.countryregiontranslation;

import models.addressbooks;

@safe:
class DLogisticsAddressCountryRegionTranslationEntity : DEntity {
  mixin(EntityThis!("LogisticsAddressCountryRegionTranslationEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "countryRegionId": StringAttribute, 
        "languageId": StringAttribute, 
        "longName": StringAttribute, 
        "shortName": StringAttribute, 
        "relationship_CountryRegionRelationshipId": StringAttribute, 
        "backingTable_LogisticsAddressCountryRegionTranslationRelationshipId": StringAttribute, 
      ])
      .registerPath("addressbooks_logistics.addresses.countries.countryregiontranslations");
  }
}
mixin(EntityCalls!("LogisticsAddressCountryRegionTranslationEntity"));

version(test_library) { unittest {
    assert(LogisticsAddressCountryRegionTranslationEntity);
  
    auto entity = LogisticsAddressCountryRegionTranslationEntity;
  }
}
