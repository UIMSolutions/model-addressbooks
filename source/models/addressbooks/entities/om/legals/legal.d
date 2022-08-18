module models.addressbooks.entities.om.legals.legal;

@safe:
import models.addressbooks;

class DOMLegalEntity : DOOPEntity {
  mixin(EntityThis!("OMLegalEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "nameAlias": StringAttribute,
        "partyNumber": StringAttribute,
        "addressBooks": StringAttribute,
        "languageId": UUIDAttribute,
        "fullPrimaryAddress": StringAttribute,
        "addressDescription": StringAttribute,
        "addressZipCode": StringAttribute,
        "addressCity": StringAttribute,
        "addressCountryRegionId": UUIDAttribute,
        "addressCountryRegionISOCode": StringAttribute,
        "addressCounty": StringAttribute,
        "addressDistrictName": StringAttribute,
        "addressLatitude": StringAttribute,
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
        "primaryContactLinkedIn": StringAttribute,
        "primaryContactLinkedInDescription": StringAttribute,
        "primaryContactLinkedInIsPrivate": StringAttribute,
        "primaryContactLinkedInPurpose": StringAttribute,
        "primaryContactTwitter": StringAttribute,
        "primaryContactTwitterDescription": StringAttribute,
        "primaryContactTwitterIsPrivate": StringAttribute,
        "primaryContactTwitterPurpose": StringAttribute,
        "LegalEntityId": UUIDAttribute,
        "partyType": StringAttribute,
        "phoneticName": StringAttribute,
        "accountingPersonnel": StringAttribute,
        "companyRepresentative": StringAttribute,
        "startDateOfBusiness": StringAttribute,
        "initialCapitalInvestment": StringAttribute,
        "businessItem": StringAttribute,
        "certifiedTaxAccountantName": StringAttribute,
        "externalLegalRepresentativeName": StringAttribute,
        "personInCharge": StringAttribute,
        "accountsOfficeReferenceNumber": StringAttribute,
        "commerceRegistration": StringAttribute,
        "legalForm": StringAttribute,
        "dnbRoutingNumber": StringAttribute,
        "traderNumber": StringAttribute,
        "fiCreditorID": StringAttribute,
        "nationalRegistryNumber": StringAttribute,
        "printCorrectiveInvoice": StringAttribute,
        "printCorrectiveInvoiceStartingDate": StringAttribute,
        "companyType": StringAttribute,
        "curpNumber": StringAttribute,
        "curpLegalRepresentative": StringAttribute,
        "legalRepresentativeName": StringAttribute,
        "rfcLegalRepresentative": StringAttribute,
        "rfc": StringAttribute,
        "stateInscription": StringAttribute,
        "nationalClassificationOfCompanyEconomicActivity": StringAttribute,
        "primaryAddressLocationId": UUIDAttribute,
        "RegistrationNumber": StringAttribute,
        "softwareIdentificationCode": StringAttribute,
        "FiscalCode": StringAttribute,
        "LegalNature": StringAttribute,
        "cuc": StringAttribute,
        "companyName": StringAttribute,
        "companyCountry": StringAttribute,
        "reportFolder": StringAttribute,
        "printINNKPPInAddress": StringAttribute,
        "printEnterpriseRegister": StringAttribute,
        "naics": StringAttribute,
        "useForFinancialConsolidationProcess": StringAttribute,
        "useForFinancialEliminationProcess": StringAttribute,
        "localizationCountryRegionCode": StringAttribute,
        "vatNum": StringAttribute,
        "importVATNum": StringAttribute,
        "profitMarginScheme": StringAttribute,
        "vatRefund": StringAttribute,
        "vatOnCustomerBehalf": StringAttribute,
        "relationship_VATNumTaxVATNumRelationshipId": UUIDAttribute,
        "relationship_ImportVATNumTaxVATNumRelationshipId": UUIDAttribute,
        "backingTable_DirPartyBaseEntityRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_.om.legals");
  }
}
mixin(EntityCalls!("OMLegalEntity"));

version(test_library) {
  unittest {
    assert(OMLegalEntity);
  
    auto entity = OMLegalEntity;
  }
}
