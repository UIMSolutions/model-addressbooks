module models.addressbooks.entities.directories.parties.contact;

@safe:
import models.addressbooks;

class DDirectoryPartyContactEntity : DOOPEntity {
  mixin(EntityThis!("DirectoryPartyContactEntity"));
  
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
      .registerPath("addressbooks_directories.parties.contacts");
  }
}
mixin(EntityCalls!("DirectoryPartyContactEntity"));

version(test_library) { unittest {
    assert(DirectoryPartyContactEntity);
  
    auto entity = DirectoryPartyContactEntity;
  }
}