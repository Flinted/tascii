// Displays one Entry.
import 'package:flutter/material.dart';
import 'Entry.dart';

class SelectedCard extends StatelessWidget {
  const SelectedCard(this.entry);

  final Entry entry;

  Widget _build() {
    return Align(
      alignment: FractionalOffset.topCenter,
        child:Container(
          margin: EdgeInsets.all(30.0),
          constraints: _squareConstraints(500.0,350.0),
          child: _createCard(),
        ));
  }

  Hero _createCard() {
    return Hero(
        tag: "card",
        child: Card(
            elevation: 8.0,
            color: entry.background,
            child: Center(
                child: Text(
              entry.title,
              style: TextStyle(fontSize: 160.0),
            ))));
  }

  BoxConstraints _squareConstraints(double height, double width) {
    return BoxConstraints(
      maxHeight: height,
      minHeight: height,
      maxWidth: width,
      minWidth: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _build();
  }
}
