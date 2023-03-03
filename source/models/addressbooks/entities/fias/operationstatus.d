module models.addressbooks.entities.fias.operationstatus;

@safe:
import models.addressbooks;

class DFIASOperationStatusesEntity : DOOPEntity {
  mixin(EntityThis!("FIASOperationStatusesEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "fiasOperationType_RU": StringAttribute, 
        "operationDescription": StringAttribute, 
        "operationStatus": StringAttribute, 
        "backingTable_FIASOperationStatuses_RURelationshipId": UUIDAttribute, 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, 
      ])
      .registerPath("addressbooks_fias.operationstatuses");
  }
}
mixin(EntityCalls!("FIASOperationStatusesEntity"));

version(test_library) { unittest {
    assert(FIASOperationStatusesEntity);
  
    auto entity = FIASOperationStatusesEntity;
  }
}
