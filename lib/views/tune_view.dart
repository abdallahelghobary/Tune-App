import 'package:flutter/material.dart';
import 'package:tune_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<Color> tuneColor = const [
    Color(0xfff44336),
    Color(0xfff89800),
    Color(0xfffEEb3b),
    Color(0xff4caf50),
    Color(0xff2f9688),
    Color(0xff2896f3),
    Color(0xff9c27b0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff243139),
        title: Text(
          'Flutter Tune',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),

      body:Column(
        children: 
         getTuneItem()
        ,
      ),
    );
  }

  List<TuneItem> getTuneItem() {
    List<TuneItem> items = [];
    for (var color in tuneColor) {
      items.add(TuneItem(color: color));
    }
    return items;
  }
}
