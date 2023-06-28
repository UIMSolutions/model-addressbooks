module models.addressbooks.entities.logistics.addresses.format;

import models.addressbooks;

@safe:
class DLogisticsAddressFormatEntity : DEntity {
  mixin(EntityThis!("LogisticsAddressFormatEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "addressFormat": StringAttribute,
        "backingTable_LogisticsAddressFormatHeadingRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.addresses.formats");
  }
}
mixin(EntityCalls!("LogisticsAddressFormatEntity"));

version(test_library) { unittest {
    assert(LogisticsAddressFormatEntity);
  
    auto entity = LogisticsAddressFormatEntity;
  }
}
