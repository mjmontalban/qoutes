import 'package:flutter/material.dart';

class cardTemplate extends StatelessWidget {
  const cardTemplate({
    Key? key,
    required this.qoute,
  }) : super(key: key);

  final qoute;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo[300],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              qoute.book,
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              qoute.author,
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
