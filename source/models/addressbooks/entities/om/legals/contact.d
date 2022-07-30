module models.addressbooks.entities.om.legals.contact;

@safe:
import models.addressbooks;

class DOmLegalEntityContactEntity : DOOPEntity {
  mixin(EntityThis!("OmLegalEntityContactEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
PartyNumber		GAB/OmLegalEntityContactEntity
LocationId		GAB/OmLegalEntityContactEntity
Description		GAB/OmLegalEntityContactEntity
Type		GAB/OmLegalEntityContactEntity
CountryRegionCode		GAB/OmLegalEntityContactEntity
Locator		GAB/OmLegalEntityContactEntity
LocatorExtension		GAB/OmLegalEntityContactEntity
Purpose		GAB/OmLegalEntityContactEntity
IsMobilePhone		GAB/OmLegalEntityContactEntity
IsPrimary		GAB/OmLegalEntityContactEntity
IsPrivate		GAB/OmLegalEntityContactEntity
DataArea		GAB/OmLegalEntityContactEntity
Relationship_OMLegalEntityRelationshipId		GAB/OmLegalEntityContactEntity
BackingTable_DirPartyContactEntityRelationshipId		GAB/OmLegalEntityContactEntity
      ])
      .registerPath("addressbooks_om.legals.contacts");
  }
}
mixin(EntityCalls!("OmLegalEntityContactEntity"));

version(test_library) {
  unittest {
    assert(OmLegalEntityContactEntity);
  
    auto entity = OmLegalEntityContactEntity;
  }
}
