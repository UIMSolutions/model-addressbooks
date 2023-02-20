module models.addressbooks.entities.directories.parties.party;

@safe:
import models.addressbooks;

class DDirectoryPartyEntity : DOOPEntity {
  mixin(EntityThis!("DirectoryPartyEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize;

    this
      .addValues([ // individual values
        "partyNumber": StringAttribute, 
        "partyType": StringAttribute, 
        "NameAlias": StringAttribute, 
        "knownAs": StringAttribute, 
        "languageId": UUIDAttribute, 
        "InstanceRelationType": StringAttribute, 
        "addressBooks": StringAttribute, 
        "organizationName": StringAttribute, 
        "organizationABCCode": StringAttribute, 
        "organizationNumOfEmployees": StringAttribute, 
        "organizationNumber": StringAttribute, 
        "organizationPhoneticName": StringAttribute, 
        "personFirstName": StringAttribute, 
        "personMiddleName": StringAttribute, 
        "personLastNamePrefix": StringAttribute, 
        "personLastName": StringAttribute, 
        "personInitials": StringAttribute, 
        "personPersonalSuffix": StringAttribute, 
        "personPersonalTitle": StringAttribute, 
        "personProfessionalTitle": StringAttribute, 
        "personProfessionalSuffix": StringAttribute, 
        "personPhoneticFirstName": StringAttribute, 
        "personPhoneticLastName": StringAttribute, 
        "personPhoneticMiddleName": StringAttribute, 
        "personGender": StringAttribute, 
        "personMaritalStatus": StringAttribute, 
        "personHobbies": StringAttribute, 
        "personChildrenNames": StringAttribute, 
        "personAnniversaryDay": StringAttribute, 
        "personAnniversaryMonth": StringAttribute, 
        "personAnniversaryYear": StringAttribute, 
        "personBirthDay": StringAttribute, 
        "personBirthMonth": StringAttribute, 
        "personBirthYear": StringAttribute, 
        "legalEntityDataArea": StringAttribute, 
        "operatingUnitNumber": StringAttribute, 
        "operatingUnitType": StringAttribute, 
        "operatingUnitTypeStr": StringAttribute, 
        "TeamType": StringAttribute, 
        "TeamDescription": StringAttribute, 
        "TeamMembershipCriterion": StringAttribute, 
        "FullPrimaryAddress": StringAttribute, 
        "addressZipCode": StringAttribute, 
        "addressCountryRegionId": UUIDAttribute, 
        "addressCountryRegionISOCode": StringAttribute, 
        "addressStreet": StringAttribute, 
        "addressCity": StringAttribute, 
        "addressCounty": StringAttribute, 
        "addressDistrictName": StringAttribute, 
        "addressState": StringAttribute, 
        "addressLatitude": StringAttribute, 
        "addressLongitude": StringAttribute, 
        "addressTimeZone": StringAttribute, 
        "addressValidFrom": StringAttribute, 
        "addressValidTo": StringAttribute, 
        "addressLocationId": UUIDAttribute, 
        "addressLocationRoles": StringAttribute, 
        "addressIsPrivate": StringAttribute, 
        "addressDescription": StringAttribute, 
        "primaryContactEmail": StringAttribute, 
        "primaryContactEmailDescription": StringAttribute, 
        "primaryContactEmailIsIM": StringAttribute, 
        "primaryContactEmailIsPrivate": StringAttribute, 
        "primaryContactEmailPurpose": StringAttribute, 
        "primaryContactFax": StringAttribute, 
        "primaryContactFaxDescription": StringAttribute, 
        "primaryContactFaxExtension": StringAttribute, 
        "primaryContactFaxIsPrivate": StringAttribute, 
        "primaryContactFaxPurpose": StringAttribute, 
        "primaryContactPhone": StringAttribute, 
        "primaryContactPhoneDescription": StringAttribute, 
        "primaryContactPhoneExtension": StringAttribute, 
        "primaryContactPhoneIsMobile": StringAttribute, 
        "primaryContactPhoneIsPrivate": StringAttribute, 
        "primaryContactPhonePurpose": StringAttribute, 
        "primaryContactTelex": StringAttribute, 
        "primaryContactTelexDescription": StringAttribute, 
        "primaryContactTelexIsPrivate": StringAttribute, 
        "primaryContactTelexPurpose": StringAttribute, 
        "primaryContactURL": StringAttribute, 
        "primaryContactURLDescription": StringAttribute, 
        "primaryContactURLIsPrivate": StringAttribute, 
        "primaryContactURLPurpose": StringAttribute, 
        "primaryContactFacebook": StringAttribute, 
        "primaryContactFacebookDescription": StringAttribute, 
        "primaryContactFacebookIsPrivate": StringAttribute, 
        "primaryContactFacebookPurpose": StringAttribute, 
        "primaryContactLinkedIn": StringAttribute, 
        "primaryContactLinkedInDescription": StringAttribute, 
        "primaryContactLinkedInIsPrivate": StringAttribute, 
        "primaryContactLinkedInPurpose": StringAttribute, 
        "primaryContactTwitter": StringAttribute, 
        "primaryContactTwitterDescription": StringAttribute, 
        "primaryContactTwitterIsPrivate": StringAttribute, 
        "primaryContactTwitterPurpose": StringAttribute, 
        "ElectronicLocationId": UUIDAttribute, 
        "primaryAddressLocation": StringAttribute, 
        "isPrimaryAddressLocationOwner": BooleanAttribute, 
        "backingTable_DirPartyBaseEntityRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_directories.parties");
  }
}
mixin(EntityCalls!("DirectoryPartyEntity"));

version(test_library) {
  unittest {
    assert(DirectoryPartyEntity);
  
    auto entity = DirectoryPartyEntity;
  }
}