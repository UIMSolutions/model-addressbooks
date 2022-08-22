module models.addressbooks.entities.om.department;

@safe:
import models.addressbooks;

class DOMDepartmentEntity : DOOPEntity {
  mixin(EntityThis!("OMDepartmentEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "partyType": StringAttribute,
        "KnownAs": StringAttribute,
        "language": StringAttribute,
        "memo": StringAttribute,
        "searchName": StringAttribute,
        "partyNumber": StringAttribute,
        "organizationType": StringAttribute,
        "operatingUnitNumber": StringAttribute,
        "operatingUnitTypes": StringAttribute,
        "primaryAddressCountryRegionId": StringAttribute,
        "primaryAddressCountryRegionISOCode": StringAttribute,
        "primaryAddressCounty": StringAttribute,
        "primaryAddressCity": StringAttribute,
        "primaryAddressDescription": StringAttribute,
        "primaryAddressValidFrom": StringAttribute,
        "primaryAddressValidTo": StringAttribute,
        "primaryAddressZipCode": StringAttribute,
        "primaryAddressState": StringAttribute,
        "primaryAddressStreet": StringAttribute,
        "primaryContactEmail": StringAttribute,
        "primaryContactEmailIsIM": StringAttribute,
        "primaryContactFax": StringAttribute,
        "primaryContactPhone": StringAttribute,
        "primaryContactPhoneExtension": StringAttribute,
        "primaryContactPhoneIsMobile": StringAttribute,
        "primaryContactTelex": StringAttribute,
        "primaryContactURL": StringAttribute,
        "addressLocationRoles": StringAttribute,
        "primaryContactPhonePurpose": StringAttribute,
        "primaryContactFaxPurpose": StringAttribute,
        "primaryContactEmailPurpose": StringAttribute,
        "primaryContactTelexPurpose": StringAttribute,
        "primaryContactURLPurpose": StringAttribute,
        "primaryContactEmailDescription": StringAttribute,
        "primaryContactFaxDescription": StringAttribute,
        "primaryContactFaxExtension": StringAttribute,
        "primaryContactPhoneDescription": StringAttribute,
        "primaryContactTelexDescription": StringAttribute,
        "primaryContactURLDescription": StringAttribute,
        "primaryContactFacebookPurpose": StringAttribute,
        "primaryContactFacebookIsPrivate": StringAttribute,
        "primaryContactFacebookDescription": StringAttribute,
        "primaryContactFacebook": StringAttribute,
        "primaryContactTwitterPurpose": StringAttribute,
        "primaryContactTwitterIsPrivate": StringAttribute,
        "primaryContactTwitterDescription": StringAttribute,
        "primaryContactTwitter": StringAttribute,
        "primaryContactLinkedInPurpose": StringAttribute,
        "primaryContactLinkedInIsPrivate": StringAttribute,
        "primaryContactLinkedInDescription": StringAttribute,
        "primaryContactLinkedIn": StringAttribute,
        "backingTable_DirPartyBaseEntityRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_om.departmentss");
  }
}
mixin(EntityCalls!("OMDepartmentEntity"));

version(test_library) {
  unittest {
    assert(OMDepartmentEntity);
  
    auto entity = OMDepartmentEntity;
  }
}
