import '../models/Contact.dart';

class PBfunctions {
  List<Contact> _contacts;

  PBfunctions(this._contacts);

  void displayAllContacts() {
    for (var contact in _contacts) {
      print('--------------------------------------');
      print('First Name: ${contact.fName}');
      print('Last Name: ${contact.lName}');
      print('Phone Number: ${contact.phoneNum}');
      print('Address: ${contact.address}');
    }
  }

  void addContact(String fName, String lName, String phoneNum, String address) {
    _contacts.add(Contact(fName, lName, phoneNum, address));
  }

  void populatePB() {
    addContact('Janusz', 'Omamalin', '09171111111', 'Talamban Cebu City');
    addContact('Natasha', 'Omamalin', '09172222222', 'Talamban Cebu City');
    addContact('Nayeon', 'Im', '09173333333', 'Korea');
    addContact('Rias', 'Gremory', '09174444444', 'Japan');
    addContact('Tifa', 'Lockhart', '09175555555', 'Nibelheim/Midgar');
  }

  Contact? _findContact(String fName, String lName) {
    return _contacts.firstWhere((x) => x.fName == fName && x.lName == lName);
  }

  void deleteContact(String fName, String lName) {
    Contact? contact = _findContact(fName, lName);

    if (contact != null) {
      _contacts.remove(contact);
    } else {
      print('Contact not found');
    }
  }

  void searchContact(String fName, String lName) {
    try {
      Contact? contact = _findContact(fName, lName);
      if (contact != null) {
        print('--------------------------------------');
        print('First Name: ${contact.fName}');
        print('Last Name: ${contact.lName}');
        print('Phone Number: ${contact.phoneNum}');
        print('Address: ${contact.address}');
      }
    } catch (e) {
      print('Contact not found');
    }
  }
}
