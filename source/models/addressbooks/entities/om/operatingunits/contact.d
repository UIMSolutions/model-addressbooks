module models.addressbooks.entities.dir.nameaffix;

@safe:
import models.addressbooks;

class DOMOperatingUnitContactEntity : DOOPEntity {
  mixin(EntityThis!("OMOperatingUnitContactEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "partyNumber": StringAttribute,
        "locationId": StringAttribute,
        "type": StringAttribute,
        "countryRegionCode": StringAttribute,
        "locator": StringAttribute,
        "locatorExtension": StringAttribute,
        "purpose": StringAttribute,
        "isMobilePhone": StringAttribute,
        "isPrimary": StringAttribute,
        "isPrivate": StringAttribute,
        "omOperatingUnitNumber": StringAttribute,
        "relationship_OMOperatingUnitRelationshipId": StringAttribute,
        "backingTable_DirPartyContactEntityRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("OMOperatingUnitContactEntity"));

version(test_library) {
  unittest {
    assert(OMOperatingUnitContactEntity);
  
    auto entity = OMOperatingUnitContactEntity;
  }
}
