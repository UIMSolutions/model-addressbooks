module models.addressbooks.entities.dir.persons.base;

@safe:
import models.addressbooks;

class DDirPersonBaseEntity : DOOPEntity {
  mixin(EntityThis!("DirPersonBaseEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "partyNumber": StringAttribute, 
        "firstName": StringAttribute, 
        "middleName": StringAttribute, 
        "lastNamePrefix": StringAttribute, 
        "lastName": StringAttribute, 
        "name": StringAttribute, 
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
        "primaryContactEmail": StringAttribute, 
        "primaryContactEmailDescription": StringAttribute, 
        "primaryContactEmailIsIM": StringAttribute, 
        "primaryContactEmailPurpose": StringAttribute, 
        "primaryContactEmailIsPrivate": StringAttribute, 
        "primaryContactEmailRecordId": UUIDAttribute, 
        "primaryContactFax": StringAttribute, 
        "primaryContactFaxDescription": StringAttribute, 
        "primaryContactFaxExtension": StringAttribute, 
        "primaryContactFaxPurpose": StringAttribute, 
        "primaryContactFaxIsPrivate": StringAttribute, 
        "primaryContactFaxRecordId": UUIDAttribute, 
        "primaryContactPhone": StringAttribute, 
        "primaryContactPhoneDescription": StringAttribute, 
        "primaryContactPhoneExtension": StringAttribute, 
        "primaryContactPhoneIsMobile": StringAttribute, 
        "primaryContactPhonePurpose": StringAttribute, 
        "primaryContactPhoneIsPrivate": StringAttribute, 
        "primaryContactPhoneRecordId": UUIDAttribute, 
        "primaryContactTelex": StringAttribute, 
        "primaryContactTelexDescription": StringAttribute, 
        "primaryContactTelexPurpose": StringAttribute, 
        "primaryContactTelexIsPrivate": StringAttribute, 
        "primaryContactTelexRecordId": UUIDAttribute, 
        "primaryContactURL": StringAttribute, 
        "primaryContactURLDescription": StringAttribute, 
        "primaryContactURLPurpose": StringAttribute, 
        "primaryContactURLIsPrivate": StringAttribute, 
        "primaryContactURLRecordId": UUIDAttribute, 
        "primaryContactFacebook": StringAttribute, 
        "primaryContactFacebookDescription": StringAttribute, 
        "primaryContactFacebookIsPrivate": StringAttribute, 
        "primaryContactFacebookPurpose": StringAttribute, 
        "primaryContactFacebookRecordId": UUIDAttribute, 
        "primaryContactLinkedIn": StringAttribute, 
        "primaryContactLinkedInDescription": StringAttribute, 
        "primaryContactLinkedInIsPrivate": StringAttribute, 
        "primaryContactLinkedInPurpose": StringAttribute, 
        "primaryContactLinkedInRecordId": UUIDAttribute, 
        "primaryContactTwitter": StringAttribute, 
        "primaryContactTwitterDescription": StringAttribute, 
        "primaryContactTwitterIsPrivate": StringAttribute, 
        "primaryContactTwitterPurpose": StringAttribute, 
        "primaryContactTwitterRecordId": UUIDAttribute, 
        "addressLocationRoles": StringAttribute, 
        "primaryAddressLocation": StringAttribute, 
        "validFrom": StringAttribute, 
        "validTo": StringAttribute, 
        "nameSequenceDisplayAs": StringAttribute, 
        "partyType": StringAttribute, 
        "ElectronicLocationId": UUIDAttribute, 
        "partyRecordId": UUIDAttribute, 
        "backingTable_DirPartyBaseEntityRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_directories.persons.bases");
  }
}
mixin(EntityCalls!("DirPersonBaseEntity"));

version(test_library) {
  unittest {
    assert(DirPersonBaseEntity);
  
    auto entity = DirPersonBaseEntity;
  }
}