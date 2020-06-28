///
//  Generated code. Do not modify.
//  source: addressbook.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'addressbook.pbenum.dart';

export 'addressbook.pbenum.dart';

class Person_PhoneNumber extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Person.PhoneNumber', package: const $pb.PackageName('tutorial'), createEmptyInstance: create)
    ..aOS(1, 'number')
    ..e<Person_PhoneType>(2, 'type', $pb.PbFieldType.OE, defaultOrMaker: Person_PhoneType.MOBILE, valueOf: Person_PhoneType.valueOf, enumValues: Person_PhoneType.values)
    ..hasRequiredFields = false
  ;

  Person_PhoneNumber._() : super();
  factory Person_PhoneNumber() => create();
  factory Person_PhoneNumber.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Person_PhoneNumber.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Person_PhoneNumber clone() => Person_PhoneNumber()..mergeFromMessage(this);
  Person_PhoneNumber copyWith(void Function(Person_PhoneNumber) updates) => super.copyWith((message) => updates(message as Person_PhoneNumber));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Person_PhoneNumber create() => Person_PhoneNumber._();
  Person_PhoneNumber createEmptyInstance() => create();
  static $pb.PbList<Person_PhoneNumber> createRepeated() => $pb.PbList<Person_PhoneNumber>();
  @$core.pragma('dart2js:noInline')
  static Person_PhoneNumber getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Person_PhoneNumber>(create);
  static Person_PhoneNumber _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get number => $_getSZ(0);
  @$pb.TagNumber(1)
  set number($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);

  @$pb.TagNumber(2)
  Person_PhoneType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(Person_PhoneType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class Person extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Person', package: const $pb.PackageName('tutorial'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..a<$core.int>(2, 'id', $pb.PbFieldType.O3)
    ..aOS(3, 'email')
    ..pc<Person_PhoneNumber>(4, 'phones', $pb.PbFieldType.PM, subBuilder: Person_PhoneNumber.create)
    ..hasRequiredFields = false
  ;

  Person._() : super();
  factory Person() => create();
  factory Person.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Person.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Person clone() => Person()..mergeFromMessage(this);
  Person copyWith(void Function(Person) updates) => super.copyWith((message) => updates(message as Person));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Person create() => Person._();
  Person createEmptyInstance() => create();
  static $pb.PbList<Person> createRepeated() => $pb.PbList<Person>();
  @$core.pragma('dart2js:noInline')
  static Person getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Person>(create);
  static Person _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Person_PhoneNumber> get phones => $_getList(3);
}

class AddressBook extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddressBook', package: const $pb.PackageName('tutorial'), createEmptyInstance: create)
    ..pc<Person>(1, 'people', $pb.PbFieldType.PM, subBuilder: Person.create)
    ..hasRequiredFields = false
  ;

  AddressBook._() : super();
  factory AddressBook() => create();
  factory AddressBook.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddressBook.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddressBook clone() => AddressBook()..mergeFromMessage(this);
  AddressBook copyWith(void Function(AddressBook) updates) => super.copyWith((message) => updates(message as AddressBook));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddressBook create() => AddressBook._();
  AddressBook createEmptyInstance() => create();
  static $pb.PbList<AddressBook> createRepeated() => $pb.PbList<AddressBook>();
  @$core.pragma('dart2js:noInline')
  static AddressBook getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddressBook>(create);
  static AddressBook _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Person> get people => $_getList(0);
}

