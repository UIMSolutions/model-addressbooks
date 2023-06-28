module models.addressbooks.entities.logistics.locationrole;

import models.addressbooks;

@safe:
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "purpose": StringAttribute,
        "postalAddress": StringAttribute,
        "contactInfo": StringAttribute,
        "language": StringAttribute,
        "type": StringAttribute,
        "backingTable_LogisticsLocationRoleTranslationRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.locationroles");
  }
}
mixin(EntityCalls!("LogisticsLocationRoleEntity"));

version(test_library) { unittest {
    assert(LogisticsLocationRoleEntity);
  
    auto entity = LogisticsLocationRoleEntity;
  }
}
