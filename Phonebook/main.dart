import 'models/Contact.dart';
import 'functions/PBfunctions.dart';

void main() {
  List<Contact> contacts1 = [];
  PBfunctions phoneBook1 = PBfunctions(contacts1);

  phoneBook1.populatePB();
  phoneBook1.displayAllContacts();
  print('\r\r');
  phoneBook1.addContact('Luffy', 'Monkey', '09176666666', 'Thousand Sunny');
  phoneBook1.displayAllContacts();
  print('\r\r');
  phoneBook1.deleteContact('Rias', 'Gremory');
  phoneBook1.displayAllContacts();
  print('\r\r');
  phoneBook1.searchContact('Janusz', 'Omamalin');
  print('\r\r');
}
