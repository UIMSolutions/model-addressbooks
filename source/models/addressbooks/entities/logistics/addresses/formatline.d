module models.addressbooks.entities.logistics.addresses.formatline;

@safe:
import models.addressbooks;

class DLogisticsAddressFormatLinesEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsAddressFormatLinesEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "addressFormat": StringAttribute,
        "lineNumber": StringAttribute,
        "addressApplicationObject": StringAttribute,
        "separator": StringAttribute,
        "newLine": StringAttribute,
        "dataEntryOnly": StringAttribute,
        "notActive": StringAttribute,
        "expand": StringAttribute,
        "special": StringAttribute,
        "origSeparator": StringAttribute,
        "backingTable_LogisticsAddressFormatLinesRelationshipId": StringAttribute,
      ])
      .registerPath("addressbooks_logistics.addresses.formatlines");
  }
}
mixin(EntityCalls!("LogisticsAddressFormatLinesEntity"));

version(test_library) {
  unittest {
    assert(LogisticsAddressFormatLinesEntity);
  
    auto entity = LogisticsAddressFormatLinesEntity;
  }
}
