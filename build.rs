fn main() {
    prost_build::compile_protos(&["proto/addressbook.proto"], &["proto/"]).unwrap();
}
