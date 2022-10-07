import 'functions/Deck_Program.dart';

void main() {
  Deck P1 = Deck();

  P1.makeADeck();
  P1.printCards();
  print('\r\r');
  P1.shuffle();
  P1.printCards();
  print('\r\r');
  List<String> suitCards = P1.cardsWithSuit('Spades');
  print(suitCards);
}
