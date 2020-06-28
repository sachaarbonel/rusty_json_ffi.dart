// use ffi_support::{define_bytebuffer_destructor, implement_into_ffi_by_protobuf, ByteBuffer};
use ffi_support::{define_string_destructor, implement_into_ffi_by_json};
// use prost::Message;
use ffi_support::rust_string_to_c;
use serde::{Deserialize, Serialize};
use serde_json::Result;
use std::os::raw::c_char;

#[derive(Serialize, Deserialize)]
pub struct Person {
    pub name: std::string::String,
    pub id: i32,
    pub email: std::string::String,
    pub phones: ::std::vec::Vec<PhoneNumber>,
}

#[derive(Serialize, Deserialize)]
pub struct PhoneNumber {
    pub number: std::string::String,
    pub r#type: i32,
}
// #[derive(Serialize, Deserialize)]
// pub enum PhoneType {
//     Mobile = 0,
//     Home = 1,
//     Work = 2,
// }
/// Our address book file is just one of these.
#[derive(Serialize, Deserialize)]
pub struct AddressBook {
    pub people: ::std::vec::Vec<Person>,
}

// pub mod msg_types {
//     include!(concat!(env!("OUT_DIR"), "/tutorial.rs"));
// }

// implement_into_ffi_by_protobuf!(msg_types::AddressBook);
// define_bytebuffer_destructor!(mylib_destroy_bytebuffer);
implement_into_ffi_by_json!(AddressBook);
define_string_destructor!(mylib_destroy_string);

fn address_book() -> AddressBook {
    //  msg_types::AddressBook
    AddressBook {
        //  msg_types::AddressBook
        people: vec![Person {
            //msg_types::Person
            id: 1,
            name: String::from("Sacha"),
            email: String::from("sacha.arbonel@hotmail.fr"),
            phones: vec![PhoneNumber {
                //msg_types::person::PhoneNumber
                number: String::from("hey"),
                r#type: 1,
            }],
        }],
    }
}

#[no_mangle]
pub extern "C" fn get_address_book() -> *mut c_char {
    //ByteBuffer {
    // let mut address_book_msg_buffer = Vec::new();
    let address_book_msg = address_book();
    // address_book_msg
    //     .encode(&mut address_book_msg_buffer)
    //     .unwrap();
    // ByteBuffer::from_vec(address_book_msg_buffer)

    rust_string_to_c(serde_json::to_string(&address_book_msg).unwrap())
    // address_book_msg.into_string()
}
