module models.addressbooks.entities.om.legals.legal;

@safe:
import models.addressbooks;

class DOMLegalEntity : DOOPEntity {
  mixin(EntityThis!("OMLegalEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
NameAlias		GAB/OMLegalEntity
PartyNumber		GAB/OMLegalEntity
AddressBooks		GAB/OMLegalEntity
LanguageId		GAB/OMLegalEntity
FullPrimaryAddress		GAB/OMLegalEntity
AddressDescription		GAB/OMLegalEntity
AddressZipCode		GAB/OMLegalEntity
AddressCity		GAB/OMLegalEntity
AddressCountryRegionId		GAB/OMLegalEntity
AddressCountryRegionISOCode		GAB/OMLegalEntity
AddressCounty		GAB/OMLegalEntity
AddressDistrictName		GAB/OMLegalEntity
AddressLatitude		GAB/OMLegalEntity
AddressLocationRoles		GAB/OMLegalEntity
AddressLongitude		GAB/OMLegalEntity
AddressState		GAB/OMLegalEntity
AddressStreet		GAB/OMLegalEntity
AddressTimeZone		GAB/OMLegalEntity
AddressValidFrom		GAB/OMLegalEntity
AddressValidTo		GAB/OMLegalEntity
PrimaryContactEmail		GAB/OMLegalEntity
PrimaryContactEmailDescription		GAB/OMLegalEntity
PrimaryContactEmailIsIM		GAB/OMLegalEntity
PrimaryContactEmailPurpose		GAB/OMLegalEntity
PrimaryContactFax		GAB/OMLegalEntity
PrimaryContactFaxDescription		GAB/OMLegalEntity
PrimaryContactFaxExtension		GAB/OMLegalEntity
PrimaryContactFaxPurpose		GAB/OMLegalEntity
PrimaryContactPhone		GAB/OMLegalEntity
PrimaryContactPhoneDescription		GAB/OMLegalEntity
PrimaryContactPhoneExtension		GAB/OMLegalEntity
PrimaryContactPhoneIsMobile		GAB/OMLegalEntity
PrimaryContactPhonePurpose		GAB/OMLegalEntity
PrimaryContactTelex		GAB/OMLegalEntity
PrimaryContactTelexDescription		GAB/OMLegalEntity
PrimaryContactTelexPurpose		GAB/OMLegalEntity
PrimaryContactURL		GAB/OMLegalEntity
PrimaryContactURLDescription		GAB/OMLegalEntity
PrimaryContactURLPurpose		GAB/OMLegalEntity
PrimaryContactFacebook		GAB/OMLegalEntity
PrimaryContactFacebookDescription		GAB/OMLegalEntity
PrimaryContactFacebookIsPrivate		GAB/OMLegalEntity
PrimaryContactFacebookPurpose		GAB/OMLegalEntity
PrimaryContactLinkedIn		GAB/OMLegalEntity
PrimaryContactLinkedInDescription		GAB/OMLegalEntity
PrimaryContactLinkedInIsPrivate		GAB/OMLegalEntity
PrimaryContactLinkedInPurpose		GAB/OMLegalEntity
PrimaryContactTwitter		GAB/OMLegalEntity
PrimaryContactTwitterDescription		GAB/OMLegalEntity
PrimaryContactTwitterIsPrivate		GAB/OMLegalEntity
PrimaryContactTwitterPurpose		GAB/OMLegalEntity
LegalEntityId		GAB/OMLegalEntity
PartyType		GAB/OMLegalEntity
PhoneticName		GAB/OMLegalEntity
AccountingPersonnel		GAB/OMLegalEntity
CompanyRepresentative		GAB/OMLegalEntity
StartDateOfBusiness		GAB/OMLegalEntity
InitialCapitalInvestment		GAB/OMLegalEntity
BusinessItem		GAB/OMLegalEntity
CertifiedTaxAccountantName		GAB/OMLegalEntity
ExternalLegalRepresentativeName		GAB/OMLegalEntity
PersonInCharge		GAB/OMLegalEntity
AccountsOfficeReferenceNumber		GAB/OMLegalEntity
CommerceRegistration		GAB/OMLegalEntity
LegalForm		GAB/OMLegalEntity
DNBRoutingNumber		GAB/OMLegalEntity
TraderNumber		GAB/OMLegalEntity
FICreditorID		GAB/OMLegalEntity
NationalRegistryNumber		GAB/OMLegalEntity
PrintCorrectiveInvoice		GAB/OMLegalEntity
PrintCorrectiveInvoiceStartingDate		GAB/OMLegalEntity
CompanyType		GAB/OMLegalEntity
CurpNumber		GAB/OMLegalEntity
CurpLegalRepresentative		GAB/OMLegalEntity
LegalRepresentativeName		GAB/OMLegalEntity
RfcLegalRepresentative		GAB/OMLegalEntity
Rfc		GAB/OMLegalEntity
StateInscription		GAB/OMLegalEntity
NationalClassificationOfCompanyEconomicActivity		GAB/OMLegalEntity
PrimaryAddressLocationId		GAB/OMLegalEntity
RegistrationNumber		GAB/OMLegalEntity
SoftwareIdentificationCode		GAB/OMLegalEntity
FiscalCode		GAB/OMLegalEntity
LegalNature		GAB/OMLegalEntity
CUC		GAB/OMLegalEntity
CompanyName		GAB/OMLegalEntity
CompanyCountry		GAB/OMLegalEntity
ReportFolder		GAB/OMLegalEntity
PrintINNKPPInAddress		GAB/OMLegalEntity
PrintEnterpriseRegister		GAB/OMLegalEntity
NAICS		GAB/OMLegalEntity
UseForFinancialConsolidationProcess		GAB/OMLegalEntity
UseForFinancialEliminationProcess		GAB/OMLegalEntity
LocalizationCountryRegionCode		GAB/OMLegalEntity
VATNum		GAB/OMLegalEntity
ImportVATNum		GAB/OMLegalEntity
ProfitMarginScheme		GAB/OMLegalEntity
VATRefund		GAB/OMLegalEntity
VATOnCustomerBehalf		GAB/OMLegalEntity
Relationship_VATNumTaxVATNumRelationshipId		GAB/OMLegalEntity
Relationship_ImportVATNumTaxVATNumRelationshipId		GAB/OMLegalEntity
BackingTable_DirPartyBaseEntityRelationshipId		GAB/OMLegalEntity
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
