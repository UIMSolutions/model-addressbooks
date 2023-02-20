module models.addressbooks.entities.om.costcenter;

@safe:
import models.addressbooks;

class DOMCostCenterEntity : DOOPEntity {
  mixin(EntityThis!("OMCostCenterEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "nameAlias": StringAttribute,
        "partyNumber": StringAttribute,
        "addressBooks": StringAttribute,
        "LanguageId": StringAttribute,
        "FullPrimaryAddress": StringAttribute,
        "addressDescription": StringAttribute,
        "addressZipCode": StringAttribute,
        "addressCity": StringAttribute,
        "addressCountryRegionId": StringAttribute,
        "addressCountryRegionISOCode": StringAttribute,
        "addressCounty": StringAttribute,
        "addressDistrictName": StringAttribute,
        "addressLatitude": StringAttribute,
        "addressLocationId": StringAttribute,
        "addressLocationRoles": StringAttribute,
        "addressLongitude": StringAttribute,
        "addressState": StringAttribute,
        "addressStreet": StringAttribute,
        "addressTimeZone": StringAttribute,
        "addressValidFrom": StringAttribute,
        "addressValidTo": StringAttribute,
        "primaryContactEmail": StringAttribute,
        "primaryContactEmailDescription": StringAttribute,
        "primaryContactEmailIsIM": StringAttribute,
        "primaryContactEmailPurpose": StringAttribute,
        "primaryContactFax": StringAttribute,
        "primaryContactFaxDescription": StringAttribute,
        "primaryContactFaxExtension": StringAttribute,
        "primaryContactFaxPurpose": StringAttribute,
        "primaryContactPhone": StringAttribute,
        "primaryContactPhoneDescription": StringAttribute,
        "primaryContactPhoneExtension": StringAttribute,
        "primaryContactPhoneIsMobile": StringAttribute,
        "primaryContactPhonePurpose": StringAttribute,
        "primaryContactTelex": StringAttribute,
        "primaryContactTelexDescription": StringAttribute,
        "primaryContactTelexPurpose": StringAttribute,
        "primaryContactURL": StringAttribute,
        "primaryContactURLDescription": StringAttribute,
        "primaryContactURLPurpose": StringAttribute,
        "primaryContactFacebook": StringAttribute,
        "primaryContactFacebookDescription": StringAttribute,
        "primaryContactFacebookIsPrivate": StringAttribute,
        "primaryContactFacebookPurpose": StringAttribute,
        "primaryContactTwitter": StringAttribute,
        "primaryContactTwitterDescription": StringAttribute,
        "primaryContactTwitterIsPrivate": StringAttribute,
        "primaryContactTwitterPurpose": StringAttribute,
        "primaryContactLinkedIn": StringAttribute,
        "primaryContactLinkedInDescription": StringAttribute,
        "primaryContactLinkedInIsPrivate": StringAttribute,
        "primaryContactLinkedInPurpose": StringAttribute,
        "operatingUnitNumber": StringAttribute,
        "operatingUnitType": StringAttribute,
        "partyType": StringAttribute,
        "phoneticName": StringAttribute,
        "electronicLocationId": StringAttribute,
        "dunsNumber": StringAttribute,
        "dunsNumberRecId": StringAttribute,
        "backingTable_OMOperatingUnitEntityRelationshipId": StringAttribute,        "Type":	StringAttribute,
        "backingTable_DirNameAffixRelationshipId":	StringAttribute,
      ])
      .registerPath("addressbooks_om.costcenters");
  }
}
mixin(EntityCalls!("OMCostCenterEntity"));

version(test_library) {
  unittest {
    assert(OMCostCenterEntity);
  
    auto entity = OMCostCenterEntity;
  }
}
