module models.addressbooks.entities.fias.room;

@safe:
import models.addressbooks;

class DFiasRoomEntity : DOOPEntity {
  mixin(EntityThis!("FiasRoomEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "roomId": UUIDAttribute,
        "regionCode": StringAttribute,
        "houseId": UUIDAttribute,
        "flatNumber": StringAttribute,
        "flatType": StringAttribute,
        "postalCode": StringAttribute,
        "startDate": StringAttribute,
        "endDate": StringAttribute,
        "backingTable_FiasRoomRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_fias.rooms");
  }
}
mixin(EntityCalls!("FiasRoomEntity"));

version(test_library) { unittest {
    assert(FiasRoomEntity);
  
    auto entity = FiasRoomEntity;
  }
}
