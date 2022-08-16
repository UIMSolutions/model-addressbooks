module models.addressbooks.entities.directories.namesequence;

@safe:
import models.addressbooks;

class DDirectoryrNameSequenceEntity : DOOPEntity {
  mixin(EntityThis!("DirectoryrNameSequenceEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "nameSequence":	StringAttribute, 
        "languageId":	UUIDAttribute, 
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
        "backingTable_DirNameSequenceTranslationRelationshipId":	UUIDAttribute, 
      ])
      .registerPath("addressbooks_directories.namesequences");
  }
}
mixin(EntityCalls!("DirectoryrNameSequenceEntity"));

version(test_library) {
  unittest {
    assert(DirectoryrNameSequenceEntity);
  
    auto entity = DirectoryrNameSequenceEntity;
  }
}