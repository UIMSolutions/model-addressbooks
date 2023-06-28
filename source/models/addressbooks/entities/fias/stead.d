module models.addressbooks.entities.fias.stead;

import models.addressbooks;

@safe:
class DFiasSteadEntity : DEntity {
  mixin(EntityThis!("FiasSteadEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "steadId": UUIDAttribute, 
        "parentId": UUIDAttribute, 
        "regionCode": StringAttribute, 
        "divType": StringAttribute, 
        "number": StringAttribute, 
        "postalCode": StringAttribute, 
        "ifnsfl": StringAttribute, 
        "terrIFNSFL": StringAttribute, 
        "okato": StringAttribute, 
        "startDate": StringAttribute, 
        "endDate": StringAttribute, 
        "backingTable_FiasSteadRelationshipId": UUIDAttribute, 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_fias.steads");
  }
}
mixin(EntityCalls!("FiasSteadEntity"));

version(test_library) { unittest {
    assert(FiasSteadEntity);
  
    auto entity = FiasSteadEntity;
  }
}
