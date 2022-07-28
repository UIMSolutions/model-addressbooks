module models.addressbooks.entities.dir.persons.person;

@safe:
import models.addressbooks;

class DDirPersonEntity : DOOPEntity {
  mixin(EntityThis!("DirPersonEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "PartyNumber": StringAttribute, 
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
        "FullPrimaryAddress": StringAttribute, 
        "AddressCity": StringAttribute, 
        "AddressCountryRegionId": StringAttribute, 
        "AddressCountryRegionISOCode": StringAttribute, 
        "AddressCounty": StringAttribute, 
        "AddressDistrictName": StringAttribute, 
        "AddressLatitude": StringAttribute, 
        "AddressLocationId": StringAttribute, 
        "AddressLocationRoles": StringAttribute, 
        "AddressLongitude": StringAttribute, 
        "AddressState": StringAttribute, 
        "AddressStreet": StringAttribute, 
        "AddressTimeZone": StringAttribute, 
        "AddressValidFrom": StringAttribute, 
        "AddressValidTo": StringAttribute, 
        "AddressZipCode": StringAttribute, 
        "AddressIsPrivate": StringAttribute, 
        "AddressDescription": StringAttribute, 
        "PrimaryContactEmail": StringAttribute, 
        "PrimaryContactEmailDescription": StringAttribute, 
        "PrimaryContactEmailIsIM": StringAttribute, 
        "PrimaryContactEmailPurpose": StringAttribute, 
        "PrimaryContactFax": StringAttribute, 
        "PrimaryContactFaxDescription": StringAttribute, 
        "PrimaryContactFaxExtension": StringAttribute, 
        "PrimaryContactFaxPurpose": StringAttribute, 
        "PrimaryContactPhone": StringAttribute, 
        "PrimaryContactPhoneDescription": StringAttribute, 
        "PrimaryContactPhoneExtension": StringAttribute, 
        "PrimaryContactPhoneIsMobile": StringAttribute, 
        "PrimaryContactPhonePurpose": StringAttribute, 
        "PrimaryContactTelex": StringAttribute, 
        "PrimaryContactTelexDescription": StringAttribute, 
        "PrimaryContactTelexPurpose": StringAttribute, 
        "PrimaryContactURL": StringAttribute, 
        "PrimaryContactURLDescription": StringAttribute, 
        "PrimaryContactURLPurpose": StringAttribute, 
        "PrimaryContactFacebook": StringAttribute, 
        "PrimaryContactFacebookDescription": StringAttribute, 
        "PrimaryContactFacebookIsPrivate": StringAttribute, 
        "PrimaryContactFacebookPurpose": StringAttribute, 
        "PrimaryContactLinkedIn": StringAttribute, 
        "PrimaryContactLinkedInDescription": StringAttribute, 
        "PrimaryContactLinkedInIsPrivate": StringAttribute, 
        "PrimaryContactLinkedInPurpose": StringAttribute, 
        "PrimaryContactTwitter": StringAttribute, 
        "PrimaryContactTwitterDescription": StringAttribute, 
        "PrimaryContactTwitterIsPrivate": StringAttribute, 
        "PrimaryContactTwitterPurpose": StringAttribute, 
        "PartyType": StringAttribute, 
        "NameSequenceDisplayAs": StringAttribute, 
        "FirstName": StringAttribute, 
        "LastNamePrefix": StringAttribute, 
        "LastName": StringAttribute, 
        "MiddleName": StringAttribute, 
        "PersonNameValidFrom": StringAttribute, 
        "PersonNameValidTo": StringAttribute, 
        "ElectronicLocationId": StringAttribute, 
        "BackingTable_DirPersonBaseEntityRelationshipId": StringAttribute, 
      ])
      .registerPath("addressbooks_dir.persons");
  }
}
mixin(EntityCalls!("DirPersonEntity"));

version(test_library) {
  unittest {
    assert(DirPersonEntity);
  
    auto entity = DirPersonEntity;
  }
}