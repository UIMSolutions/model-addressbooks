module models.addressbooks.entities.dir.parties.contact;

@safe:
import models.addressbooks;

class DDirPartyContactEntity : DOOPEntity {
  mixin(EntityThis!("DirPartyContactEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "PartyNumber": StringAttribute, 
        "LocationId": StringAttribute, 
        "Description": StringAttribute, 
        "Type": StringAttribute, 
        "CountryRegionCode": StringAttribute, 
        "Locator": StringAttribute, 
        "LocatorExtension": StringAttribute, 
        "Purpose": StringAttribute, 
        "IsMobilePhone": StringAttribute, 
        "IsInstantMessage": StringAttribute, 
        "IsPrimary": StringAttribute, 
        "IsPrivate": StringAttribute, 
        "Party": StringAttribute, 
        "Location": StringAttribute, 
        "DunsNumberRecId": StringAttribute, 
        "ParentLocation": StringAttribute, 
        "LogisticsElectronicAddressRecId": StringAttribute, 
        "BackingTable_LogisticsLocationRelationshipId": StringAttribute, 

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