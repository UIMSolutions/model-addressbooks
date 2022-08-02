module models.addressbooks.entities.dir.parties.contact;

@safe:
import models.addressbooks;

class DDirPartyContactEntity : DOOPEntity {
  mixin(EntityThis!("DirPartyContactEntity"));
  
  override void initialize() {
    super.initialize;

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
        "isInstantMessage": BooleanAttribute, 
        "isPrimary": BooleanAttribute, 
        "isPrivate": BooleanAttribute, 
        "party": StringAttribute, 
        "location": StringAttribute, 
        "dunsNumberRecId": UUIDAttribute, 
        "parentLocation": StringAttribute, 
        "logisticsElectronicAddressRecId": UUIDAttribute, 
        "backingTable_LogisticsLocationRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_dir.parties.contacts");
  }
}
mixin(EntityCalls!("DirPartyContactEntity"));

version(test_library) {
  unittest {
    assert(DirPartyContactEntity);
  
    auto entity = DirPartyContactEntity;
  }
}