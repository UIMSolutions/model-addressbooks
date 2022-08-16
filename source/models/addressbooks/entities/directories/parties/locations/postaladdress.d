module models.addressbooks.entities.directories.parties.locations.postaladdress;

@safe:
import models.addressbooks;

class DDirPartyLocationPostalAddressEntity : DOOPEntity {
  mixin(EntityThis!("DirPartyLocationPostalAddressEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "attentionToAddressLine": StringAttribute,
        "isLocationOwner": StringAttribute,
        "isPostalAddress": StringAttribute,
        "isPrimary": StringAttribute,
        "isPrimaryTaxRegistration": StringAttribute,
        "isPrivate": StringAttribute,
        "isRoleBusiness": StringAttribute,
        "isRoleDelivery": StringAttribute,
        "isRoleHome": StringAttribute,
        "isRoleInvoice": StringAttribute,
        "location": StringAttribute,
        "party": StringAttribute,
        "partyNumber": StringAttribute,
        "address": StringAttribute,
        "apartment_RU": StringAttribute,
        "building_RU": StringAttribute,
        "buildingCompliment": StringAttribute,
        "city": StringAttribute,
        "cityInKana": StringAttribute,
        "countryRegionId": StringAttribute,
        "countryRegionISOCode": StringAttribute,
        "county": StringAttribute,
        "description": StringAttribute,
        "districtName": StringAttribute,
        "dunsNumber": StringAttribute,
        "isPrivatePostalAddress": StringAttribute,
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
        "resolveDuplicateAddress": StringAttribute,
        "taxGroup": StringAttribute,
        "backingTable_LogisticsPostalAddressBaseEntityRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_directories.addressbook");
  }
}
mixin(EntityCalls!("DirPartyLocationPostalAddressEntity"));

version(test_library) {
  unittest {
    assert(DirPartyLocationPostalAddressEntity);
  
    auto entity = DirPartyLocationPostalAddressEntity;
  }
}