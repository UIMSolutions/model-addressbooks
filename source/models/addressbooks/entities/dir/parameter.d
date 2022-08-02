module models.addressbooks.entities.dir.parameter;

@safe:
import models.addressbooks;

class DDirParametersEntity : DOOPEntity {
  mixin(EntityThis!("DirParametersEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "key": StringAttribute,
        "nameSequence": StringAttribute,
        "deletePartiesWithNoRole": StringAttribute,
        "useDuplicateCheck": StringAttribute,
        "dunsDisplayOnAddress": StringAttribute,
        "dunsCheckUnique": StringAttribute,
        "defaultPartyType": StringAttribute,
        "enableEditForExternallyMaintainedFields": StringAttribute,
        "backingTable_DirParametersRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_dir.parameters");
  }
}
mixin(EntityCalls!("DirParametersEntity"));

version(test_library) {
  unittest {
    assert(DirParametersEntity);
  
    auto entity = DirParametersEntity;
  }
}
