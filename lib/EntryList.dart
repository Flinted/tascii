import 'package:flutter/material.dart';
import 'Entry.dart';
import 'EntryItem.dart';

class EntryList extends StatelessWidget{

  EntryList(this.data, this.stateChangeCallback);
  final List<Entry> data;
  final void Function(Entry selection) stateChangeCallback;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) =>
          EntryItem(this.data[index], stateChangeCallback),
      itemCount: this.data.length,
    );
  }
}