module models.addressbooks.entities.logistics.addresses.zipcodechina;

@safe:
import models.addressbooks;

class DLogisticsAddressZipcodeChinaEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsAddressZipcodeChinaEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "yzbm": StringAttribute,
        "xzqh": StringAttribute,
        "xzqu": StringAttribute,
        "jd1": StringAttribute,
        "jd2": StringAttribute,
        "jd3": StringAttribute,
        "jd4": StringAttribute,
        "jd5": StringAttribute,
        "country": StringAttribute,
        "backingTable_LogisticsAddressZipCodeRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.adresses.streets");
  }
}
mixin(EntityCalls!("LogisticsAddressZipcodeChinaEntity"));

version(test_library) { unittest {
    assert(LogisticsAddressZipcodeChinaEntity);
  
    auto entity = LogisticsAddressZipcodeChinaEntity;
  }
}
