module models.addressbooks.entities.fias.stead;

@safe:
import models.addressbooks;

class DDirNameAffixEntity : DOOPEntity {
  mixin(EntityThis!("FiasSteadEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
steadId		GAB/FiasSteadEntity
steadGuid		GAB/FiasSteadEntity
parentGuid		GAB/FiasSteadEntity
regionCode		GAB/FiasSteadEntity
divType		GAB/FiasSteadEntity
number		GAB/FiasSteadEntity
postalCode		GAB/FiasSteadEntity
ifnsfl		GAB/FiasSteadEntity
terrIFNSFL		GAB/FiasSteadEntity
okato		GAB/FiasSteadEntity
startDate		GAB/FiasSteadEntity
endDate		GAB/FiasSteadEntity
backingTable_FiasSteadRelationshipId		GAB/FiasSteadEntity
relationship_PrimaryCompanyContextRelationshipId		GAB/FiasSteadEntity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("FiasSteadEntity"));

version(test_library) {
  unittest {
    assert(FiasSteadEntity);
  
    auto entity = FiasSteadEntity;
  }
}
