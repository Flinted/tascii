import 'package:flutter/material.dart';
import 'Entry.dart';
import 'EntryList.dart';
import 'RandomColorProvider.dart';
import 'SelectedCard.dart';

class TasciiPage extends StatefulWidget {
  TasciiPage({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _TasciiPageState createState() => _TasciiPageState();
}

class _TasciiPageState extends State<TasciiPage>
    with SingleTickerProviderStateMixin {
  Entry _selection = data[0];
  Animation animationScale;
  Animation animationRotation;
  Animation animationTranslate;
  AnimationController animationController;

  AppBar _createAppBar() {
    return AppBar(
      title: Text(widget.title),
    );
  }

  @override
  void initState() {
    animationController = AnimationController(
        duration: new Duration(milliseconds: 500), vsync: this);
    animationScale = Tween(begin: 0.0, end: 1.0).animate(animationController);
    animationRotation =
        Tween(begin: 0.0, end: 3.14159 * 4).animate(animationController);
    animationTranslate =
        Tween(begin: 450.0, end: 0.0).animate(animationController);
    super.initState();
  }

  void stateChangeCallback(Entry selection) {
    animationController.forward(from: 0.0);

    setState(() {
      _selection = selection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      body: Stack(
        children: <Widget>[
          Positioned(
            child: AnimatedBuilder(
              animation: animationController,
              builder: (context, child) {
                return Transform.translate(
                    offset: Offset(animationTranslate.value, animationTranslate.value),
                    child: Transform.rotate(
                        angle: animationRotation.value,
                        child: Transform.scale(
                            scale: animationScale.value,
                            child: SelectedCard(_selection))));
              },
            ),
          ),
          new Positioned(
            child: new Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(child: EntryList(data, stateChangeCallback)),
            ),
          )
        ],
      ),
    );
  }
}

final List<Entry> data = <Entry>[
  Entry('0', RandomColorProvider.randomMagneticShade()),
  Entry('1', RandomColorProvider.randomMagneticShade()),
  Entry('2', RandomColorProvider.randomMagneticShade()),
  Entry('3', RandomColorProvider.randomMagneticShade()),
  Entry('5', RandomColorProvider.randomMagneticShade()),
  Entry('8', RandomColorProvider.randomMagneticShade()),
  Entry('13', RandomColorProvider.randomMagneticShade()),
  Entry('21', RandomColorProvider.randomMagneticShade()),
  Entry('?', RandomColorProvider.randomMagneticShade()),
];
