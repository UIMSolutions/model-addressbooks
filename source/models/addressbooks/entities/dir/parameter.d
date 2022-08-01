module models.addressbooks.entities.dir.parameter;

@safe:
import models.addressbooks;

class DDirParametersEntity : DOOPEntity {
  mixin(EntityThis!("DirParametersEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
key		GAB/DirParametersEntity
nameSequence		GAB/DirParametersEntity
deletePartiesWithNoRole		GAB/DirParametersEntity
useDuplicateCheck		GAB/DirParametersEntity
dunsDisplayOnAddress		GAB/DirParametersEntity
dunsCheckUnique		GAB/DirParametersEntity
defaultPartyType		GAB/DirParametersEntity
enableEditForExternallyMaintainedFields		GAB/DirParametersEntity
backingTable_DirParametersRelationshipId		GAB/DirParametersEntity
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
