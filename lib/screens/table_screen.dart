import 'package:blackjackmaster/models/deck.dart';
import 'package:blackjackmaster/models/hand.dart';
import 'package:blackjackmaster/models/playing_card.dart';
import 'package:blackjackmaster/utils/constants.dart';
import 'package:flutter/material.dart';

class TableScreen extends StatefulWidget {
  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  Deck deck;
  Hand hand;

  void initDeck() {
    setState(() {
      deck = Deck();
      deck.shuffle();
    });
  }

  void initHand() {
    setState(() {
      hand = Hand();
    });
  }

  void takeCard() {
    setState(() {
      hand.addCards(deck.take());
    });
  }

  @override
  void initState() {
    super.initState();
    initDeck();
    initHand();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppName),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: PlayingCardHand(
                hand: hand,
              ),
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: deck.empty
                ? Text('Deck is empty')
                : RaisedButton(
                    onPressed: () {
                      takeCard();
                    },
                    child: Text('HIT'),
                  ),
          ),
          deck.empty
              ? Padding(
                  padding: EdgeInsets.all(30.0),
                  child: RaisedButton(
                    onPressed: () {
                      initDeck();
                      initHand();
                    },
                    child: Text('Reset'),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

class PlayingCardHand extends StatelessWidget {
  PlayingCardHand({this.hand});

  final Hand hand;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      children: hand.cards
          .map((card) => ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 140.0),
                child: PlayingCardImage(
                  card: card,
                ),
              ))
          .toList(),
    );
  }
}

class PlayingCardImage extends StatelessWidget {
  PlayingCardImage({this.card});

  final PlayingCard card;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Image.asset(
        card.imageUri,
      ),
    );
  }
}
