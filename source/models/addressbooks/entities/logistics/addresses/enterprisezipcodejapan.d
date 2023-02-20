module models.addressbooks.entities.logistics.addresses.enterprisezipcodeJapan;


@safe:
import models.addressbooks;

class DLogisticsLocationRoleEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize;

    this
      .addValues([ // individual values
        "kanjiCity": StringAttribute,
        "cityRecId": StringAttribute,
        "countryRegionId": StringAttribute,
        "kanjiDistrict": StringAttribute,
        "kanjiPrefecture": StringAttribute,
        "streetName": StringAttribute,
        "individualEnterpriseBuildingNumber": StringAttribute,
        "kanjiEnterpriseName": StringAttribute,
        "kanjiStreet": StringAttribute,
        "backingTable_LogisticsAddressZipCodeRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.locationroles");
  }
}
mixin(EntityCalls!("LogisticsLocationRoleEntity"));

version(test_library) {
  unittest {
    assert(LogisticsLocationRoleEntity);
  
    auto entity = LogisticsLocationRoleEntity;
  }
}
