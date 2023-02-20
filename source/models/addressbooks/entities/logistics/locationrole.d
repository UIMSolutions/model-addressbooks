module models.addressbooks.entities.logistics.locationrole;

@safe:
import models.addressbooks;

class DLogisticsLocationRoleEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize;

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

version(test_library) {
  unittest {
    assert(LogisticsLocationRoleEntity);
  
    auto entity = LogisticsLocationRoleEntity;
  }
}
