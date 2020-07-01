// target/debug/libplay_once.dylib
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'package:rust_dart_ffi_protobuf/addressbook.pb.dart';

class ByteBuffer extends Struct {
  @Int64()
  int len;
  Pointer<Uint8> data;

  factory ByteBuffer.allocate(int len, Pointer<Uint8> data) =>
      allocate<ByteBuffer>().ref
        ..len = len
        ..data = data;
}

typedef get_address_book_func = Pointer<ByteBuffer> Function();

typedef GetAddressBook = Pointer<ByteBuffer> Function();

// typedef get_address_book_func = Pointer<Utf8> Function();

main() {
  DynamicLibrary dylib;
  // Open the dynamic library that contains the C function.
  if (Platform.isMacOS) {
    dylib = DynamicLibrary.open("target/debug/librust_dart_ffi_protobuf.dylib");
  }

  final get_address_book_pointer =
      dylib.lookup<NativeFunction<get_address_book_func>>('get_address_book');
  final get_address_book =
      get_address_book_pointer.asFunction<get_address_book_func>();

  final messagePointer = get_address_book();
  ByteBuffer buffer = messagePointer.ref;
  final book = AddressBook.fromBuffer([
    10,
    44,
    10,
    5,
    83,
    97,
    99,
    104,
    97,
    16,
    1,
    26,
    24,
    115,
    97,
    99,
    104,
    97,
    46,
    97,
    114,
    98,
    111,
    110,
    101,
    108,
    64,
    104,
    111,
    116,
    109,
    97,
    105,
    108,
    46,
    102,
    114,
    34,
    7,
    10,
    3,
    104,
    101,
    121,
    16,
    1,
  ]);
  // final message = Utf8.fromUtf8(messagePointer);
  print(book.people[0].id);
}
