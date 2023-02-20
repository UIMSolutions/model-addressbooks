module models.addressbooks.entities.logistics.addresses.countries.fiasidcode;

@safe:
import models.addressbooks;

class DLogisticsAddressFiasIdCodeEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsAddressFiasIdCodeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "fiasGuidId": StringAttribute,
        "fiasParentGuidId": StringAttribute,
        "refRecId": StringAttribute,
        "refTableId": StringAttribute,
        "versionId": StringAttribute,
        "backingTable_LogisticsAddressFiasGuidCodes_RURelationshipId": StringAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.addresses.countries.fiasidcodes");
  }
}
mixin(EntityCalls!("LogisticsAddressFiasIdCodeEntity"));

version(test_library) {
  unittest {
    assert(LogisticsAddressFiasIdCodeEntity);
  
    auto entity = LogisticsAddressFiasIdCodeEntity;
  }
}
