module models.addressbooks;

public import std.stdio;
public import std.string;
public import std.uuid;

// Dub
public import vibe.d;

public import uim.core;
public import uim.oop;

public import models.addressbooks.attributes;
public import models.addressbooks.classes;
public import models.addressbooks.elememts;
public import models.addressbooks.entities;

@safe:
static this() {
  ModelRegistry.register("models.addressbooks",  
    Model
    .name("addressbooks");
}