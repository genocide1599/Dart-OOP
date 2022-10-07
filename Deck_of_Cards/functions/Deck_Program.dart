class Deck {
  List<String> _deck = [
    'Ace of Diamonds',
    'Two of Diamonds',
    'Three of Diamonds',
    'Four of Diamonds',
    'Five of Diamonds',
    'Six of Diamonds',
    'Seven of Diamonds',
    'Eight of Diamonds',
    'Nine of Diamonds',
    'ten of Diamonds',
    'Jack of Diamonds',
    'Queen of Diamonds',
    'King of Diamonds',
    'Ace of Hearts',
    'Two of Hearts',
    'Three of Hearts',
    'Four of Hearts',
    'Five of Hearts',
    'Six of Hearts',
    'Seven of Hearts',
    'Eight of Hearts',
    'Nine of Hearts',
    'ten of Hearts',
    'Jack of Hearts',
    'Queen of Hearts',
    'King of Hearts',
    'Ace of Clubs',
    'Two of Clubs',
    'Three of Clubs',
    'Four of Clubs',
    'Five of Clubs',
    'Six of Clubs',
    'Seven of Clubs',
    'Eight of Clubs',
    'Nine of Clubs',
    'ten of Clubs',
    'Jack of Clubs',
    'Queen of Clubs',
    'King of Clubs',
    'Ace of Spades',
    'Two of Spades',
    'Three of Spades',
    'Four of Spades',
    'Five of Spades',
    'Six of Spades',
    'Seven of Spades',
    'Eight of Spades',
    'Nine of Spades',
    'ten of Spades',
    'Jack of Spades',
    'Queen of Spades',
    'King of Spades'
  ];

  List<String> makeADeck() {
    return _deck;
  }

  void printCards() {
    for (var card in _deck) {
      print(card);
    }
  }

  void shuffle() {
    _deck.shuffle();
  }

  List<String> cardsWithSuit(String suit) {
    return _deck.where((card) => card.contains(suit)).toList();
  }
}
