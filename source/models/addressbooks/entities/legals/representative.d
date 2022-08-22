module models.addressbooks.entities.legals.representative;

@safe:
import models.addressbooks;

class DLegalRepresentativeEntity : DOOPEntity {
  mixin(EntityThis!("LegalRepresentativeEntity"));
  
  override void initialize() {
    super.initialize;

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

version(test_library) {
  unittest {
    assert(LegalRepresentativeEntity);
  
    auto entity = LegalRepresentativeEntity;
  }
}