import 'package:meta/meta.dart';

class PlayingCard {
  PlayingCard({
    @required name,
    @required value,
    @required symbol,
    description,
  })  : _name = name,
        _value = value,
        _symbol = symbol,
        _description = description ?? name;

  String _name;
  int _value;
  Symbol _symbol;
  String _description;

  String get name => _name;

  int get value => _value;

  Symbol get symbol => _symbol;

  String get description => _description;

  String get imageUri {
    return 'images/playing_cards/${_name.toLowerCase()}_${symbolName.toLowerCase()}.png';
  }

  String get symbolName {
    switch (_symbol) {
      case Symbol.clubs:
        return 'Clubs';
      case Symbol.spades:
        return 'Spades';
      case Symbol.diamonds:
        return 'Diamonds';
      case Symbol.hearts:
        return 'Hearts';
    }
    return '';
  }
}

enum Symbol { clubs, spades, diamonds, hearts }
