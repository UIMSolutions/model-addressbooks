module models.addressbooks.entities.logistics.postaladresses.electroniccontact;

@safe:
import models.addressbooks;

class DLogisticsPostalAddressElectronicContactEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsPostalAddressElectronicContactEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "internationalCallingCode": StringAttribute,
        "isInstantMessage": StringAttribute,
        "isMobile": StringAttribute,
        "isPrimary": StringAttribute,
        "isPrivate": StringAttribute,
        "location": StringAttribute,
        "locator": StringAttribute,
        "extension": StringAttribute,
        "type": StringAttribute,
        "postalAddressLocationId": StringAttribute,
        "purpose": StringAttribute,
        "locationId": StringAttribute,
        "backingTable_LogisticsElectronicAddressRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.postaladresses.electroniccontacts");
  }
}
mixin(EntityCalls!("LogisticsPostalAddressElectronicContactEntity"));

version(test_library) {
  unittest {
    assert(LogisticsPostalAddressElectronicContactEntity);
  
    auto entity = LogisticsPostalAddressElectronicContactEntity;
  }
}