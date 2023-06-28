module models.addressbooks.entities.directories.persons.person;

import models.addressbooks;

@safe:
class DDirPersonEntity : DEntity {
  mixin(EntityThis!("DirPersonEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "partyNumber": StringAttribute, 
        "nameAlias": StringAttribute, 
        "knownAs": StringAttribute, 
        "languageId": UUIDAttribute, 
        "addressBooks": StringAttribute, 
        "anniversaryDay": StringAttribute, 
        "anniversaryMonth": StringAttribute, 
        "anniversaryYear": StringAttribute, 
        "birthDay": StringAttribute, 
        "birthMonth": StringAttribute, 
        "birthYear": StringAttribute, 
        "childrenNames": StringAttribute, 
        "gender": StringAttribute, 
        "hobbies": StringAttribute, 
        "initials": StringAttribute, 
        "maritalStatus": StringAttribute, 
        "phoneticFirstName": StringAttribute, 
        "phoneticLastName": StringAttribute, 
        "phoneticMiddleName": StringAttribute, 
        "personalSuffix": StringAttribute, 
        "personalTitle": StringAttribute, 
        "professionalSuffix": StringAttribute, 
        "professionalTitle": StringAttribute, 
        "fullPrimaryAddress": StringAttribute, 
        "addressCity": StringAttribute, 
        "addressCountryRegionId": UUIDAttribute, 
        "addressCountryRegionISOCode": StringAttribute, 
        "addressCounty": StringAttribute, 
        "addressDistrictName": StringAttribute, 
        "addressLatitude": StringAttribute, 
        "addressLocationId": UUIDAttribute, 
        "addressLocationRoles": StringAttribute, 
        "addressLongitude": StringAttribute, 
        "addressState": StringAttribute, 
        "addressStreet": StringAttribute, 
        "addressTimeZone": StringAttribute, 
        "addressValidFrom": StringAttribute, 
        "addressValidTo": StringAttribute, 
        "addressZipCode": StringAttribute, 
        "addressIsPrivate": StringAttribute, 
        "addressDescription": StringAttribute, 
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
        "primaryContactLinkedIn": StringAttribute, 
        "primaryContactLinkedInDescription": StringAttribute, 
        "primaryContactLinkedInIsPrivate": StringAttribute, 
        "primaryContactLinkedInPurpose": StringAttribute, 
        "primaryContactTwitter": StringAttribute, 
        "primaryContactTwitterDescription": StringAttribute, 
        "primaryContactTwitterIsPrivate": StringAttribute, 
        "primaryContactTwitterPurpose": StringAttribute, 
        "partyType": StringAttribute, 
        "nameSequenceDisplayAs": StringAttribute, 
        "firstName": StringAttribute, 
        "lastNamePrefix": StringAttribute, 
        "lastName": StringAttribute, 
        "middleName": StringAttribute, 
        "personNameValidFrom": StringAttribute, 
        "personNameValidTo": StringAttribute, 
        "electronicLocationId": UUIDAttribute, 
        "backingTable_DirPersonBaseEntityRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_directories.persons");
  }
}
mixin(EntityCalls!("DirPersonEntity"));

version(test_library) { unittest {
    assert(DirPersonEntity);
  
    auto entity = DirPersonEntity;
  }
}
