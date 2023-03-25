module models.addressbooks.entities.fias.addressobject;

@safe:
import models.addressbooks;

class DFiasAddressObjectEntityy : DOOPEntity {
  mixin(EntityThis!("FiasAddressObjectEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "aoId": UUIDAttribute, 
        "aoGuid": UUIDAttribute, 
        "aoLevel": StringAttribute, 
        "regionCode": StringAttribute, 
        "areaCode": StringAttribute, 
        "cityCode": StringAttribute, 
        "ctArCode": StringAttribute, 
        "placeCode": StringAttribute, 
        "planCode": StringAttribute, 
        "streetCode": StringAttribute, 
        "extrCode": StringAttribute, 
        "actStatus": StringAttribute, 
        "liveStatus": StringAttribute, 
        "operStatus": StringAttribute, 
        "offName": StringAttribute, 
        "parentGuid": UUIDAttribute, 
        "shortName": StringAttribute, 
        "postalCode": StringAttribute, 
        "ifnsfl": StringAttribute, 
        "terrIFNSFL": StringAttribute, 
        "okato": StringAttribute, 
        "divType": StringAttribute, 
        "nextId": UUIDAttribute, 
        "prevId": UUIDAttribute, 
        "backingTable_FiasAddressObjectRelationshipId": UUIDAttribute, 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_fias.addressobjects");
  }
}
mixin(EntityCalls!("FiasAddressObjectEntity"));

version(test_library) { unittest {
    assert(FiasAddressObjectEntity);
  
    auto entity = FiasAddressObjectEntity;
  }
}
