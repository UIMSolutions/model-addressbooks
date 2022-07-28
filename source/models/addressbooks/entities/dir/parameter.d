module models.addressbooks.entities.dir.parameter;

@safe:
import models.addressbooks;

class DDirParametersEntity : DOOPEntity {
  mixin(EntityThis!("DirParametersEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
Key		GAB/DirParametersEntity
NameSequence		GAB/DirParametersEntity
DeletePartiesWithNoRole		GAB/DirParametersEntity
UseDuplicateCheck		GAB/DirParametersEntity
DunsDisplayOnAddress		GAB/DirParametersEntity
DunsCheckUnique		GAB/DirParametersEntity
DefaultPartyType		GAB/DirParametersEntity
EnableEditForExternallyMaintainedFields		GAB/DirParametersEntity
BackingTable_DirParametersRelationshipId		GAB/DirParametersEntity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("DirParametersEntity"));

version(test_library) {
  unittest {
    assert(DirParametersEntity);
  
    auto entity = DirParametersEntity;
  }
}
