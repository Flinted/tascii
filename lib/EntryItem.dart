// Displays one Entry.
import 'package:flutter/material.dart';
import 'Entry.dart';

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry, this.stateChangeCallback);

  final Entry entry;
  final void Function(Entry selection) stateChangeCallback;

  void _onTap() {
    stateChangeCallback(entry);
  }

  Widget _buildTiles(Entry root) {
    return Align(
        alignment: FractionalOffset.bottomCenter,
        child: GestureDetector(
            onTap:_onTap,
            child: Container(
                margin: EdgeInsets.all(10.0),
                constraints: _squareConstraints(120.0),
                child: Hero(
                    tag: "card",
                    child: Card(
                        elevation: 8.0,
                        color: root.background,
                        child: Center(
                            child: Text(
                          root.title,
                          style: TextStyle(fontSize: 60.0),
                        )))))));
  }

  BoxConstraints _squareConstraints(double size) {
    return BoxConstraints(
      maxHeight: size,
      maxWidth: size,
      minWidth: size,
      minHeight: size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
