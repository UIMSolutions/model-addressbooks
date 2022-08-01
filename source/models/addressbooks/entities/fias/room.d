module models.addressbooks.entities.fias.room;

@safe:
import models.addressbooks;

class DFiasRoomEntity : DOOPEntity {
  mixin(EntityThis!("FiasRoomEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
roomId		GAB/FiasRoomEntity
roomGuid		GAB/FiasRoomEntity
regionCode		GAB/FiasRoomEntity
houseGuid		GAB/FiasRoomEntity
flatNumber		GAB/FiasRoomEntity
flatType		GAB/FiasRoomEntity
postalCode		GAB/FiasRoomEntity
startDate		GAB/FiasRoomEntity
endDate		GAB/FiasRoomEntity
backingTable_FiasRoomRelationshipId		GAB/FiasRoomEntity
relationship_PrimaryCompanyContextRelationshipId		GAB/FiasRoomEntity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("FiasRoomEntity"));

version(test_library) {
  unittest {
    assert(FiasRoomEntity);
  
    auto entity = FiasRoomEntity;
  }
}
