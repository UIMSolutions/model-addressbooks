module models.addressbooks.entities.fias.addressobject;

@safe:
import models.addressbooks;

class DFiasAddressObjectEntityy : DOOPEntity {
  mixin(EntityThis!("FiasAddressObjectEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
aoId		GAB/FiasAddressObjectEntity
aoGuid		GAB/FiasAddressObjectEntity
aoLevel		GAB/FiasAddressObjectEntity
regionCode		GAB/FiasAddressObjectEntity
areaCode		GAB/FiasAddressObjectEntity
cityCode		GAB/FiasAddressObjectEntity
ctArCode		GAB/FiasAddressObjectEntity
placeCode		GAB/FiasAddressObjectEntity
planCode		GAB/FiasAddressObjectEntity
streetCode		GAB/FiasAddressObjectEntity
extrCode		GAB/FiasAddressObjectEntity
actStatus		GAB/FiasAddressObjectEntity
liveStatus		GAB/FiasAddressObjectEntity
operStatus		GAB/FiasAddressObjectEntity
offName		GAB/FiasAddressObjectEntity
parentGuid		GAB/FiasAddressObjectEntity
shortName		GAB/FiasAddressObjectEntity
postalCode		GAB/FiasAddressObjectEntity
ifnsfl		GAB/FiasAddressObjectEntity
terrIFNSFL		GAB/FiasAddressObjectEntity
okato		GAB/FiasAddressObjectEntity
divType		GAB/FiasAddressObjectEntity
NextId		GAB/FiasAddressObjectEntity
prevId		GAB/FiasAddressObjectEntity
backingTable_FiasAddressObjectRelationshipId		GAB/FiasAddressObjectEntity
relationship_PrimaryCompanyContextRelationshipId		GAB/FiasAddressObjectEntity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("FiasAddressObjectEntity"));

version(test_library) {
  unittest {
    assert(FiasAddressObjectEntity);
  
    auto entity = FiasAddressObjectEntity;
  }
}
