import 'package:flutter/material.dart';
import 'data/qoutes.dart';
import 'widgets/qouteCard.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Qoutes> list = [
    Qoutes("mjordan", "The Z Nation"),
    Qoutes("jolina", "The Z Nation I"),
    Qoutes("kyle", "The Z Nation II"),
    Qoutes("Tyron", "Mobile Legends"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Qoutes Of The Day"),
          backgroundColor: Colors.indigo[600],
        ),
        body: Column(
            children: list.map((qout) => cardTemplate(qoute: qout)).toList()));
  }
}
