module models.addressbooks.entities.dir.namesequence;

@safe:
import models.addressbooks;

class DDirNameSequenceEntity : DOOPEntity {
  mixin(EntityThis!("DirNameSequenceEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "nameSequence":	StringAttribute, 
        "languageId":	StringAttribute, 
        "firstPosition":	StringAttribute, 
        "separator1":	StringAttribute, 
        "separator1Spaces":	StringAttribute, 
        "secondPosition":	StringAttribute, 
        "separator2":	StringAttribute, 
        "separator2Spaces":	StringAttribute, 
        "thirdPosition":	StringAttribute, 
        "separator3":	StringAttribute, 
        "separator3Spaces":	StringAttribute, 
        "lastPosition":	StringAttribute, 
        "backingTable_DirNameSequenceTranslationRelationshipId":	StringAttribute, 
      ])
      .registerPath("addressbooks_dir.namesequences");
  }
}
mixin(EntityCalls!("DirNameSequenceEntity"));

version(test_library) {
  unittest {
    assert(DirNameSequenceEntity);
  
    auto entity = DirNameSequenceEntity;
  }
}