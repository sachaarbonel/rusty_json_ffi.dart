// target/debug/libplay_once.dylib
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'package:rust_dart_ffi_protobuf/addressbook.dart';

// class ByteBuffer extends Struct {
//   @Int64()
//   int len;
//   Pointer<Uint8> data;

//   factory ByteBuffer.allocate(int len, Pointer<Uint8> data) =>
//       allocate<ByteBuffer>().ref
//         ..len = len
//         ..data = data;
// }

// typedef get_address_book_func = Pointer<ByteBuffer> Function(Void);

// typedef GetAddressBook = Pointer<ByteBuffer> Function(void);

typedef get_address_book_func = Pointer<Utf8> Function();

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
  final message = Utf8.fromUtf8(messagePointer);
  print(addressBookFromJson(message).people[0].id);
}
