module models.addressbooks.entities.fias.operationstatus;

@safe:
import models.addressbooks;

class DFIASOperationStatusesEntity : DOOPEntity {
  mixin(EntityThis!("FIASOperationStatusesEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
FiasOperationType_RU		GAB/FIASOperationStatusesEntity
OperationDescription		GAB/FIASOperationStatusesEntity
OperationStatus		GAB/FIASOperationStatusesEntity
BackingTable_FIASOperationStatuses_RURelationshipId		GAB/FIASOperationStatusesEntity
Relationship_PrimaryCompanyContextRelationshipId		GAB/FIASOperationStatusesEntity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("FIASOperationStatusesEntity"));

version(test_library) {
  unittest {
    assert(FIASOperationStatusesEntity);
  
    auto entity = FIASOperationStatusesEntity;
  }
}
