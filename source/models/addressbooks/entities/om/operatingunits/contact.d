module models.addressbooks.entities.dir.nameaffix;

@safe:
import models.addressbooks;

class DOMOperatingUnitContactEntity : DOOPEntity {
  mixin(EntityThis!("OMOperatingUnitContactEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
PartyNumber		GAB/OMOperatingUnitContactEntity
LocationId		GAB/OMOperatingUnitContactEntity
Description		GAB/OMOperatingUnitContactEntity
Type		GAB/OMOperatingUnitContactEntity
CountryRegionCode		GAB/OMOperatingUnitContactEntity
Locator		GAB/OMOperatingUnitContactEntity
LocatorExtension		GAB/OMOperatingUnitContactEntity
Purpose		GAB/OMOperatingUnitContactEntity
IsMobilePhone		GAB/OMOperatingUnitContactEntity
IsPrimary		GAB/OMOperatingUnitContactEntity
IsPrivate		GAB/OMOperatingUnitContactEntity
OMOperatingUnitNumber		GAB/OMOperatingUnitContactEntity
Relationship_OMOperatingUnitRelationshipId		GAB/OMOperatingUnitContactEntity
BackingTable_DirPartyContactEntityRelationshipId		GAB/OMOperatingUnitContactEntity
      ])
      .registerPath("addressbooks_dir.nameaffixes");
  }
}
mixin(EntityCalls!("OMOperatingUnitContactEntity"));

version(test_library) {
  unittest {
    assert(OMOperatingUnitContactEntity);
  
    auto entity = OMOperatingUnitContactEntity;
  }
}
