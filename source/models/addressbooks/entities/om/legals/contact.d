module models.addressbooks.entities.om.legals.contact;

import models.addressbooks;

@safe:
class DOmLegalEntityContactEntity : DOOPEntity {
  mixin(EntityThis!("OmLegalEntityContactEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "partyNumber": StringAttribute, 
        "locationId": UUIDAttribute, 
        "type": StringAttribute, 
        "countryRegionCode": StringAttribute, 
        "locator": StringAttribute, 
        "locatorExtension": StringAttribute, 
        "purpose": StringAttribute, 
        "isMobilePhone": BooleanAttribute, 
        "isPrimary": BooleanAttribute, 
        "isPrivate": BooleanAttribute, 
        "dataArea": StringAttribute, 
        "relationship_OMLegalEntityRelationshipId": UUIDAttribute, 
        "backingTable_DirPartyContactEntityRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_om.legals.contacts");
  }
}
mixin(EntityCalls!("OmLegalEntityContactEntity"));

version(test_library) { unittest {
    assert(OmLegalEntityContactEntity);
  
    auto entity = OmLegalEntityContactEntity;
  }
}
