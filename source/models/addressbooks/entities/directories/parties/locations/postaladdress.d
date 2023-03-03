module models.addressbooks.entities.directories.parties.locations.postaladdress;

@safe:
import models.addressbooks;

class DDirPartyLocationPostalAddressEntity : DOOPEntity {
  mixin(EntityThis!("DirPartyLocationPostalAddressEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "attentionToAddressLine": StringAttribute,
        "isLocationOwner": StringAttribute,
        "isPostalAddress": BooleanAttribute,
        "isPrimary": BooleanAttribute,
        "isPrimaryTaxRegistration": BooleanAttribute,
        "isPrivate": BooleanAttribute,
        "isRoleBusiness": BooleanAttribute,
        "isRoleDelivery": BooleanAttribute,
        "isRoleHome": BooleanAttribute,
        "isRoleInvoice": BooleanAttribute,
        "location": StringAttribute,
        "party": StringAttribute,
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
        "locationId": UUIDAttribute,
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
        "resolveDuplicateAddress": StringAttribute,
        "taxGroup": StringAttribute,
        "backingTable_LogisticsPostalAddressBaseEntityRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_directories.addressbook");
  }
}
mixin(EntityCalls!("DirPartyLocationPostalAddressEntity"));

version(test_library) { unittest {
    assert(DirPartyLocationPostalAddressEntity);
  
    auto entity = DirPartyLocationPostalAddressEntity;
  }
}