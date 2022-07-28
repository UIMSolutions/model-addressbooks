module models.addressbooks.entities.dir.persons.base;

@safe:
import models.addressbooks;

class DDirPersonBaseEntity : DOOPEntity {
  mixin(EntityThis!("DirPersonBaseEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "PartyNumber": StringAttribute, 
        "FirstName": StringAttribute, 
        "MiddleName": StringAttribute, 
        "LastNamePrefix": StringAttribute, 
        "LastName": StringAttribute, 
        "Name": StringAttribute, 
        "NameAlias": StringAttribute, 
        "KnownAs": StringAttribute, 
        "LanguageId": StringAttribute, 
        "AddressBooks": StringAttribute, 
        "AnniversaryDay": StringAttribute, 
        "AnniversaryMonth": StringAttribute, 
        "AnniversaryYear": StringAttribute, 
        "BirthDay": StringAttribute, 
        "BirthMonth": StringAttribute, 
        "BirthYear": StringAttribute, 
        "ChildrenNames": StringAttribute, 
        "Gender": StringAttribute, 
        "Hobbies": StringAttribute, 
        "Initials": StringAttribute, 
        "MaritalStatus": StringAttribute, 
        "PhoneticFirstName": StringAttribute, 
        "PhoneticLastName": StringAttribute, 
        "PhoneticMiddleName": StringAttribute, 
        "PersonalSuffix": StringAttribute, 
        "PersonalTitle": StringAttribute, 
        "ProfessionalSuffix": StringAttribute, 
        "ProfessionalTitle": StringAttribute, 
        "PrimaryContactEmail": StringAttribute, 
        "PrimaryContactEmailDescription": StringAttribute, 
        "PrimaryContactEmailIsIM": StringAttribute, 
        "PrimaryContactEmailPurpose": StringAttribute, 
        "PrimaryContactEmailIsPrivate": StringAttribute, 
        "PrimaryContactEmailRecordId": StringAttribute, 
        "PrimaryContactFax": StringAttribute, 
        "PrimaryContactFaxDescription": StringAttribute, 
        "PrimaryContactFaxExtension": StringAttribute, 
        "PrimaryContactFaxPurpose": StringAttribute, 
        "PrimaryContactFaxIsPrivate": StringAttribute, 
        "PrimaryContactFaxRecordId": StringAttribute, 
        "PrimaryContactPhone": StringAttribute, 
        "PrimaryContactPhoneDescription": StringAttribute, 
        "PrimaryContactPhoneExtension": StringAttribute, 
        "PrimaryContactPhoneIsMobile": StringAttribute, 
        "PrimaryContactPhonePurpose": StringAttribute, 
        "PrimaryContactPhoneIsPrivate": StringAttribute, 
        "PrimaryContactPhoneRecordId": StringAttribute, 
        "PrimaryContactTelex": StringAttribute, 
        "PrimaryContactTelexDescription": StringAttribute, 
        "PrimaryContactTelexPurpose": StringAttribute, 
        "PrimaryContactTelexIsPrivate": StringAttribute, 
        "PrimaryContactTelexRecordId": StringAttribute, 
        "PrimaryContactURL": StringAttribute, 
        "PrimaryContactURLDescription": StringAttribute, 
        "PrimaryContactURLPurpose": StringAttribute, 
        "PrimaryContactURLIsPrivate": StringAttribute, 
        "PrimaryContactURLRecordId": StringAttribute, 
        "PrimaryContactFacebook": StringAttribute, 
        "PrimaryContactFacebookDescription": StringAttribute, 
        "PrimaryContactFacebookIsPrivate": StringAttribute, 
        "PrimaryContactFacebookPurpose": StringAttribute, 
        "PrimaryContactFacebookRecordId": StringAttribute, 
        "PrimaryContactLinkedIn": StringAttribute, 
        "PrimaryContactLinkedInDescription": StringAttribute, 
        "PrimaryContactLinkedInIsPrivate": StringAttribute, 
        "PrimaryContactLinkedInPurpose": StringAttribute, 
        "PrimaryContactLinkedInRecordId": StringAttribute, 
        "PrimaryContactTwitter": StringAttribute, 
        "PrimaryContactTwitterDescription": StringAttribute, 
        "PrimaryContactTwitterIsPrivate": StringAttribute, 
        "PrimaryContactTwitterPurpose": StringAttribute, 
        "PrimaryContactTwitterRecordId": StringAttribute, 
        "AddressLocationRoles": StringAttribute, 
        "PrimaryAddressLocation": StringAttribute, 
        "ValidFrom": StringAttribute, 
        "ValidTo": StringAttribute, 
        "NameSequenceDisplayAs": StringAttribute, 
        "PartyType": StringAttribute, 
        "ElectronicLocationId": StringAttribute, 
        "PartyRecordId": StringAttribute, 
        "BackingTable_DirPartyBaseEntityRelationshipId": StringAttribute, 
      ])
      .registerPath("addressbooks_dir.persons.base");
  }
}
mixin(EntityCalls!("DirPersonBaseEntity"));

version(test_library) {
  unittest {
    assert(DirPersonBaseEntity);
  
    auto entity = DirPersonBaseEntity;
  }
}