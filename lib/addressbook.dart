// import 'dart:convert';

// AddressBook addressBookFromJson(String str) =>
//     AddressBook.fromJson(json.decode(str));

// String addressBookToJson(AddressBook data) => json.encode(data.toJson());

// class AddressBook {
//   AddressBook({
//     this.people,
//   });

//   List<Person> people;

//   factory AddressBook.fromJson(Map<String, dynamic> json) => AddressBook(
//         people:
//             List<Person>.from(json["people"].map((x) => Person.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "people": List<dynamic>.from(people.map((x) => x.toJson())),
//       };
// }

// class Person {
//   Person({
//     this.name,
//     this.id,
//     this.email,
//     this.phones,
//   });

//   String name;
//   int id;
//   String email;
//   List<PhoneNumber> phones;

//   factory Person.fromJson(Map<String, dynamic> json) => Person(
//         name: json["name"],
//         id: json["id"],
//         email: json["email"],
//         phones: List<PhoneNumber>.from(
//             json["phones"].map((x) => PhoneNumber.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "id": id,
//         "email": email,
//         "phones": List<dynamic>.from(phones.map((x) => x.toJson())),
//       };
// }

// class PhoneNumber {
//   PhoneNumber({
//     this.number,
//     this.type,
//   });

//   String number;
//   int type;

//   factory PhoneNumber.fromJson(Map<String, dynamic> json) => PhoneNumber(
//         number: json["number"],
//         type: json["type"],
//       );

//   Map<String, dynamic> toJson() => {
//         "number": number,
//         "type": type,
//       };
// }
