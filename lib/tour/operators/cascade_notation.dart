// this source for tour => operators : cascade_notation
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

class PhoneNumber {
  late String number;
  late String label;
  PhoneNumber._builder(PhoneNumberBuilder builder) {
    number = builder.number;
    label = builder.label;
  }
}

class PhoneNumberBuilder {
  late String number;

  // PhoneNumberBuilder number(String number) {
  //   this._number = number;
  //   return this;
  // }

  late String label;

  // PhoneNumberBuilder label(String label) {
  //   this._label = label;
  //   return this;
  // }

  PhoneNumber build() {
    return PhoneNumber._builder(this);
  }
}

class AddressBook {
  late String name;
  late String email;
  late PhoneNumber phone;

  AddressBook._builder(AddressBookBuilder builder) {
    name = builder.name;
    email = builder.email;
    phone = builder.phone;
  }
}

class AddressBookBuilder {
  late String name;

  late String email;

  late PhoneNumber phone;

  // AddressBookBuilder name(String name) {
  //   this._name = name;
  //   return this;
  // }

  // AddressBookBuilder email(String email) {
  //   this._email = email;
  //   return this;
  // }

  // AddressBookBuilder phone(PhoneNumber phone) {
  //   this._phone = phone;
  //   return this;
  // }

  AddressBook build() {
    return AddressBook._builder(this);
  }
}
