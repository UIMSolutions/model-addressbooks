module models.addressbooks.entities.directories.parties.base;

import models.addressbooks;

@safe:
class DDirectoryPartyBaseEntity : DEntity {
  mixin(EntityThis!("DirectoryPartyBaseEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "partyNumber": StringAttribute,
        "partyType": StringAttribute,
        "nameAlias": StringAttribute,
        "knownAs": StringAttribute,
        "addressBooks": StringAttribute,
        "languageId": UUIDAttribute,
        "instanceRelationType": StringAttribute,
        "organizationABCCode": StringAttribute,
        "organizationNumOfEmployees": StringAttribute,
        "organizationNumber": StringAttribute,
        "organizationPhoneticName": StringAttribute,
        "personInitials": StringAttribute,
        "personFirstName": StringAttribute,
        "personMiddleName": StringAttribute,
        "personLastNamePrefix": StringAttribute,
        "personLastName": StringAttribute,
        "personalSuffix": StringAttribute,
        "personPersonalSuffix": StringAttribute,
        "personalTitle": StringAttribute,
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
        "organizationType": StringAttribute,
        "operatingUnitNumber": StringAttribute,
        "operatingUnitType": StringAttribute,
        "operatingUnitTypeStr": StringAttribute,
        "teamType": StringAttribute,
        "teamDescription": StringAttribute,
        "teamMembershipCriterion": StringAttribute,
        "primaryAddressLocation": StringAttribute,
        "addressLocationRoles": StringAttribute,
        "primaryContactEmailRecordId": UUIDAttribute,
        "primaryContactEmail": StringAttribute,
        "primaryContactEmailDescription": StringAttribute,
        "primaryContactEmailIsIM": StringAttribute,
        "primaryContactEmailPurpose": StringAttribute,
        "primaryContactEmailIsPrivate": StringAttribute,
        "primaryContactFaxRecordId": UUIDAttribute,
        "primaryContactFax": StringAttribute,
        "primaryContactFaxDescription": StringAttribute,
        "primaryContactFaxExtension": StringAttribute,
        "primaryContactFaxPurpose": StringAttribute,
        "primaryContactFaxIsPrivate": StringAttribute,
        "primaryContactPhoneRecordId": UUIDAttribute,
        "primaryContactPhone": StringAttribute,
        "primaryContactPhoneDescription": StringAttribute,
        "primaryContactPhoneExtension": StringAttribute,
        "primaryContactPhoneIsMobile": StringAttribute,
        "primaryContactPhonePurpose": StringAttribute,
        "primaryContactPhoneIsPrivate": StringAttribute,
        "primaryContactTelexRecordId": UUIDAttribute,
        "primaryContactTelex": StringAttribute,
        "primaryContactTelexDescription": StringAttribute,
        "primaryContactTelexPurpose": StringAttribute,
        "primaryContactTelexIsPrivate": StringAttribute,
        "primaryContactURLRecordId": UUIDAttribute,
        "primaryContactURL": StringAttribute,
        "primaryContactURLDescription": StringAttribute,
        "primaryContactURLPurpose": StringAttribute,
        "primaryContactURLIsPrivate": StringAttribute,
        "primaryContactFacebookRecordId": UUIDAttribute,
        "primaryContactFacebook": StringAttribute,
        "primaryContactFacebookDescription": StringAttribute,
        "primaryContactFacebookPurpose": StringAttribute,
        "primaryContactFacebookIsPrivate": StringAttribute,
        "primaryContactTwitterRecordId": UUIDAttribute,
        "primaryContactTwitter": StringAttribute,
        "primaryContactTwitterDescription": StringAttribute,
        "primaryContactTwitterPurpose": StringAttribute,
        "primaryContactTwitterIsPrivate": StringAttribute,
        "primaryContactLinkedInRecordId": UUIDAttribute,
        "primaryContactLinkedIn": StringAttribute,
        "primaryContactLinkedInDescription": StringAttribute,
        "primaryContactLinkedInPurpose": StringAttribute,
        "primaryContactLinkedInIsPrivate": StringAttribute,
        "nameSequence": StringAttribute,
        "savePersonName": StringAttribute,
        "electronicLocationId": UUIDAttribute,
        "personNameValidTo": StringAttribute,
        "personNameValidFrom": StringAttribute,
        "partyRecordId": UUIDAttribute,
        "dirPartyLocationRecId": UUIDAttribute,
        "removeElectronicAddressesOnDelete": StringAttribute,
        "dirPersonNameRecId": UUIDAttribute,
        "backingTable_DirPartyTableRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_directories.dir.parties.bases");
  }
}
mixin(EntityCalls!("DirectoryPartyBaseEntity"));

version(test_library) { unittest {
    assert(DirectoryPartyBaseEntity);
  
    auto entity = DirectoryPartyBaseEntity;
  }
}