module models.addressbooks.entities.legals.representative;

import models.addressbooks;

@safe:
class DLegalRepresentativeEntity : DEntity {
  mixin(EntityThis!("LegalRepresentativeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "fiscalOrganization": StringAttribute,
        "fiscalOrganizationRootFiscalEstablishmentDataArea": StringAttribute,
        "fiscalOrganizationRootFiscalEstablishment": StringAttribute,
        "cpf": StringAttribute,
        "role": StringAttribute,
        "location": StringAttribute,
        "validatedInRFBAuthority": StringAttribute,
        "crcState": StringAttribute,
        "crc": StringAttribute,
        "crcExpirationDate": StringAttribute,
        "backingTable_LegalRepresentative_BRRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_legals.representatives");
  }
}
mixin(EntityCalls!("LegalRepresentativeEntity"));

version(test_library) { unittest {
    assert(LegalRepresentativeEntity);
  
    auto entity = LegalRepresentativeEntity;
  }
}