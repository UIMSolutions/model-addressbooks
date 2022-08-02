module models.addressbooks.entities.fias.stead;

@safe:
import models.addressbooks;

class DFiasSteadEntity : DOOPEntity {
  mixin(EntityThis!("FiasSteadEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "steadId": StringAttribute, 
        "steadGuid": StringAttribute, 
        "parentGuid": StringAttribute, 
        "regionCode": StringAttribute, 
        "divType": StringAttribute, 
        "number": StringAttribute, 
        "postalCode": StringAttribute, 
        "ifnsfl": StringAttribute, 
        "terrIFNSFL": StringAttribute, 
        "okato": StringAttribute, 
        "startDate": StringAttribute, 
        "endDate": StringAttribute, 
        "backingTable_FiasSteadRelationshipId": StringAttribute, 
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, 
      ])
      .registerPath("addressbooks_fias.steads");
  }
}
mixin(EntityCalls!("FiasSteadEntity"));

version(test_library) {
  unittest {
    assert(FiasSteadEntity);
  
    auto entity = FiasSteadEntity;
  }
}
