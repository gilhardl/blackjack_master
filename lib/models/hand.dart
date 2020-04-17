import 'package:blackjackmaster/models/playing_card.dart';

class Hand {
  List<PlayingCard> cards = List();

  int get cardsCount => cards.length;

  int get cardsValue {
    return cards
        .map((card) => card.value)
        .reduce((totalValue, cardValue) => totalValue + cardValue);
  }

  void addCards(List<PlayingCard> newCards) {
    cards.addAll(newCards);
  }
}

enum HandType { soft, hard }
