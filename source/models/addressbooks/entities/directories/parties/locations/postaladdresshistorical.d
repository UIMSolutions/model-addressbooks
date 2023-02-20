module models.addressbooks.entities.directories.parties.locations.postaladdresshistorical;

@safe:
import models.addressbooks;

class DDirectoryPartyLocationPostalAddressHistoricalEntity : DOOPEntity {
  mixin(EntityThis!("DirectoryPartyLocationPostalAddressHistoricalEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "attentionToAddressLine": StringAttribute, 
        "isLocationOwner": BooleanAttribute, 
        "isPostalAddress": BooleanAttribute, 
        "isPrimary": BooleanAttribute, 
        "isPrimaryTaxRegistration": BooleanAttribute, 
        "isPrivate": BooleanAttribute, 
        "isRoleBusiness": BooleanAttribute, 
        "isRoleDelivery": BooleanAttribute, 
        "isRoleHome": BooleanAttribute, 
        "isRoleInvoice": BooleanAttribute, 
        "partyNumber": StringAttribute, 
        "address": StringAttribute, 
        "apartment_RU": StringAttribute, 
        "building_RU": StringAttribute, 
        "buildingCompliment": StringAttribute, 
        "city": StringAttribute, 
        "cityInKana": StringAttribute, 
        "countryRegionId": UUIDAttribute, 
        "countryRegionISOCode": StringAttribute, 
        "county": StringAttribute, 
        "districtName": StringAttribute, 
        "dunsNumber": StringAttribute, 
        "isPrivatePostalAddress": BooleanAttribute, 
        "latitude": StringAttribute, 
        "locationId": StringAttribute, 
        "longitude": StringAttribute, 
        "postBox": StringAttribute, 
        "state": StringAttribute, 
        "street": StringAttribute, 
        "streetInKana": StringAttribute, 
        "streetNumber": StringAttribute, 
        "timeZone": StringAttribute, 
        "validFrom": StringAttribute, 
        "validTo": StringAttribute, 
        "zipCode": StringAttribute, 
        "roles": StringAttribute, 
        "backingTable_DirPartyLocationPostalAddressV2EntityRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_directories.parties.locations.postaladdresshistoricals");
  }
}
mixin(EntityCalls!("DirectoryPartyLocationPostalAddressHistoricalEntity"));

version(test_library) {
  unittest {
    assert(DirectoryPartyLocationPostalAddressHistoricalEntity);
  
    auto entity = DirectoryPartyLocationPostalAddressHistoricalEntity;
  }
}