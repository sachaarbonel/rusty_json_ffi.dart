///
//  Generated code. Do not modify.
//  source: addressbook.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Person_PhoneType extends $pb.ProtobufEnum {
  static const Person_PhoneType MOBILE = Person_PhoneType._(0, 'MOBILE');
  static const Person_PhoneType HOME = Person_PhoneType._(1, 'HOME');
  static const Person_PhoneType WORK = Person_PhoneType._(2, 'WORK');

  static const $core.List<Person_PhoneType> values = <Person_PhoneType> [
    MOBILE,
    HOME,
    WORK,
  ];

  static final $core.Map<$core.int, Person_PhoneType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Person_PhoneType valueOf($core.int value) => _byValue[value];

  const Person_PhoneType._($core.int v, $core.String n) : super(v, n);
}

