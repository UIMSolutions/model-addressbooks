module models.addressbooks.entities.fias.addressobject;

@safe:
import models.addressbooks;

class DFiasAddressObjectEntityy : DOOPEntity {
  mixin(EntityThis!("FiasAddressObjectEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
AOId		GAB/FiasAddressObjectEntity
AOGuid		GAB/FiasAddressObjectEntity
AOLevel		GAB/FiasAddressObjectEntity
RegionCode		GAB/FiasAddressObjectEntity
AreaCode		GAB/FiasAddressObjectEntity
CityCode		GAB/FiasAddressObjectEntity
CtArCode		GAB/FiasAddressObjectEntity
PlaceCode		GAB/FiasAddressObjectEntity
PlanCode		GAB/FiasAddressObjectEntity
StreetCode		GAB/FiasAddressObjectEntity
ExtrCode		GAB/FiasAddressObjectEntity
ActStatus		GAB/FiasAddressObjectEntity
LiveStatus		GAB/FiasAddressObjectEntity
OperStatus		GAB/FiasAddressObjectEntity
OffName		GAB/FiasAddressObjectEntity
ParentGuid		GAB/FiasAddressObjectEntity
ShortName		GAB/FiasAddressObjectEntity
PostalCode		GAB/FiasAddressObjectEntity
IFNSFL		GAB/FiasAddressObjectEntity
TerrIFNSFL		GAB/FiasAddressObjectEntity
OKATO		GAB/FiasAddressObjectEntity
DivType		GAB/FiasAddressObjectEntity
NextId		GAB/FiasAddressObjectEntity
PrevId		GAB/FiasAddressObjectEntity
BackingTable_FiasAddressObjectRelationshipId		GAB/FiasAddressObjectEntity
Relationship_PrimaryCompanyContextRelationshipId		GAB/FiasAddressObjectEntity
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
