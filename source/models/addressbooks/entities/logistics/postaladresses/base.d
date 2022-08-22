module models.addressbooks.entities.logistics.postaladresses.base;

@safe:
import models.addressbooks;

class DLogisticsPostalAddressBaseEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsPostalAddressBaseEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "address": StringAttribute,
        "apartment_RU": StringAttribute,
        "building_RU": StringAttribute,
        "buildingCompliment": StringAttribute,
        "city": StringAttribute,
        "countryRegionId": StringAttribute,
        "countryRegionISOCode": StringAttribute,
        "county": StringAttribute,
        "districtName": StringAttribute,
        "flatId_RU": StringAttribute,
        "houseId_RU": StringAttribute,
        "isPrivate": StringAttribute,
        "latitude": StringAttribute,
        "longitude": StringAttribute,
        "postBox": StringAttribute,
        "state": StringAttribute,
        "street": StringAttribute,
        "streetId_RU": StringAttribute,
        "streetNumber": StringAttribute,
        "timeZone": StringAttribute,
        "validFrom": StringAttribute,
        "validTo": StringAttribute,
        "zipCode": StringAttribute,
        "cityInKana": StringAttribute,
        "streetInKana": StringAttribute,
        "locationId": StringAttribute,
        "dunsNumber": StringAttribute,
        "locationRecId": StringAttribute,
        "privateForParty": StringAttribute,
        "addressRecId": StringAttribute,
        "resolveDuplicateAddress": StringAttribute,
        "backingTable_LogisticsLocationRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.postaladresses.bases");
  }
}
mixin(EntityCalls!("LogisticsPostalAddressBaseEntity"));

version(test_library) {
  unittest {
    assert(LogisticsPostalAddressBaseEntity);
  
    auto entity = LogisticsPostalAddressBaseEntity;
  }
}