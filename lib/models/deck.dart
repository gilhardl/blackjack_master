import 'package:blackjackmaster/models/playing_card.dart';

class Deck {
  List<PlayingCard> cards = List<PlayingCard>.from(allCards);

  bool get empty => cards.length == 0;

  void shuffle() {
    cards.shuffle();
  }

  List<PlayingCard> take({int count = 1}) {
    if (cards.length >= count) {
      final takenCards = cards.take(count).toList();
      cards.removeRange(0, count);
      return takenCards;
    } else {
      return cards;
    }
  }
}

final List<PlayingCard> allCards = [
  PlayingCard(name: '2', value: 2, symbol: Symbol.clubs),
  PlayingCard(name: '3', value: 3, symbol: Symbol.clubs),
  PlayingCard(name: '4', value: 4, symbol: Symbol.clubs),
  PlayingCard(name: '5', value: 5, symbol: Symbol.clubs),
  PlayingCard(name: '6', value: 6, symbol: Symbol.clubs),
  PlayingCard(name: '7', value: 7, symbol: Symbol.clubs),
  PlayingCard(name: '8', value: 8, symbol: Symbol.clubs),
  PlayingCard(name: '9', value: 9, symbol: Symbol.clubs),
  PlayingCard(name: '10', value: 10, symbol: Symbol.clubs),
  PlayingCard(name: 'J', value: 10, symbol: Symbol.clubs, description: 'Jack'),
  PlayingCard(name: 'Q', value: 10, symbol: Symbol.clubs, description: 'Queen'),
  PlayingCard(name: 'K', value: 10, symbol: Symbol.clubs, description: 'King'),
  PlayingCard(name: 'A', value: 11, symbol: Symbol.clubs, description: 'Ace'),
  PlayingCard(name: '2', value: 2, symbol: Symbol.spades),
  PlayingCard(name: '3', value: 3, symbol: Symbol.spades),
  PlayingCard(name: '4', value: 4, symbol: Symbol.spades),
  PlayingCard(name: '5', value: 5, symbol: Symbol.spades),
  PlayingCard(name: '6', value: 6, symbol: Symbol.spades),
  PlayingCard(name: '7', value: 7, symbol: Symbol.spades),
  PlayingCard(name: '8', value: 8, symbol: Symbol.spades),
  PlayingCard(name: '9', value: 9, symbol: Symbol.spades),
  PlayingCard(name: '10', value: 10, symbol: Symbol.spades),
  PlayingCard(name: 'J', value: 10, symbol: Symbol.spades, description: 'Jack'),
  PlayingCard(
      name: 'Q', value: 10, symbol: Symbol.spades, description: 'Queen'),
  PlayingCard(name: 'K', value: 10, symbol: Symbol.spades, description: 'King'),
  PlayingCard(name: 'A', value: 11, symbol: Symbol.spades, description: 'Ace'),
  PlayingCard(name: '2', value: 2, symbol: Symbol.diamonds),
  PlayingCard(name: '3', value: 3, symbol: Symbol.diamonds),
  PlayingCard(name: '4', value: 4, symbol: Symbol.diamonds),
  PlayingCard(name: '5', value: 5, symbol: Symbol.diamonds),
  PlayingCard(name: '6', value: 6, symbol: Symbol.diamonds),
  PlayingCard(name: '7', value: 7, symbol: Symbol.diamonds),
  PlayingCard(name: '8', value: 8, symbol: Symbol.diamonds),
  PlayingCard(name: '9', value: 9, symbol: Symbol.diamonds),
  PlayingCard(name: '10', value: 10, symbol: Symbol.diamonds),
  PlayingCard(
      name: 'J', value: 10, symbol: Symbol.diamonds, description: 'Jack'),
  PlayingCard(
      name: 'Q', value: 10, symbol: Symbol.diamonds, description: 'Queen'),
  PlayingCard(
      name: 'K', value: 10, symbol: Symbol.diamonds, description: 'King'),
  PlayingCard(
      name: 'A', value: 11, symbol: Symbol.diamonds, description: 'Ace'),
  PlayingCard(name: '2', value: 2, symbol: Symbol.hearts),
  PlayingCard(name: '3', value: 3, symbol: Symbol.hearts),
  PlayingCard(name: '4', value: 4, symbol: Symbol.hearts),
  PlayingCard(name: '5', value: 5, symbol: Symbol.hearts),
  PlayingCard(name: '6', value: 6, symbol: Symbol.hearts),
  PlayingCard(name: '7', value: 7, symbol: Symbol.hearts),
  PlayingCard(name: '8', value: 8, symbol: Symbol.hearts),
  PlayingCard(name: '9', value: 9, symbol: Symbol.hearts),
  PlayingCard(name: '10', value: 10, symbol: Symbol.hearts),
  PlayingCard(name: 'J', value: 10, symbol: Symbol.hearts, description: 'Jack'),
  PlayingCard(
      name: 'Q', value: 10, symbol: Symbol.hearts, description: 'Queen'),
  PlayingCard(name: 'K', value: 10, symbol: Symbol.hearts, description: 'King'),
  PlayingCard(name: 'A', value: 11, symbol: Symbol.hearts, description: 'Ace'),
];
