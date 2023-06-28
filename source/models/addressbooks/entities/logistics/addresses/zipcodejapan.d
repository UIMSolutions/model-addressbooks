module models.addressbooks.entities.logistics.addresses.zipcodejapan;

import models.addressbooks;

@safe:
class DLogisticsAddressZipcodeJapanEntity : DEntity {
  mixin(EntityThis!("LogisticsAddressZipcodeJapanEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "cityId": StringAttribute,
        "streetName": StringAttribute,
        "zipCode": StringAttribute,
        "city": StringAttribute,
        "state": StringAttribute,
        "country": StringAttribute,
        "updateFlag": StringAttribute,
        "kanaStreetName": StringAttribute,
        "kanaCity": StringAttribute,
        "backingTable_LogisticsAddressZipCodeRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.addresses.zipcodejapan");
  }
}
mixin(EntityCalls!("LogisticsAddressZipcodeJapanEntity"));

version(test_library) { unittest {
    assert(LogisticsAddressZipcodeJapanEntity);
  
    auto entity = LogisticsAddressZipcodeJapanEntity;
  }
}
