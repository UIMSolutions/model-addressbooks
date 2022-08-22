module models.addressbooks.entities.logistics.adresses.street;

@safe:
import models.addressbooks;

class DLogisticsAddressStreetEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsAddressStreetEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "city"StringAttribute,
        "countryRegion"StringAttribute,
        "county"StringAttribute,
        "description"StringAttribute,
        "district"StringAttribute,
        "properties"StringAttribute,
        "state"StringAttribute,
        "city_FK_Name"StringAttribute,
        "district_FK_Name"StringAttribute,
        "properties_FK_AddressTypeTable_RU"StringAttribute,
        "properties_FK_GniCode"StringAttribute,
        "properties_FK_IMNSDistrict"StringAttribute,
        "properties_FK_ObjectStatus"StringAttribute,
        "properties_FK_OKATO"StringAttribute,
        "properties_FK_ZipCode"StringAttribute,
        "addressTypeTable_RU_AddrTypeCode"StringAttribute,
        "zipCode_FK_ZipCode"StringAttribute,
        "backingTable_LogisticsAddressStreet_RURelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.adresses.streets");
  }
}
mixin(EntityCalls!("LogisticsAddressStreetEntity"));

version(test_library) {
  unittest {
    assert(LogisticsAddressStreetEntity);
  
    auto entity = LogisticsAddressStreetEntity;
  }
}
