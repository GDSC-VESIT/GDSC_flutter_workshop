import 'package:flutter/material.dart';

class Col extends StatefulWidget {
  const Col({super.key});

  @override
  State<Col> createState() => _ColState();
}

class _ColState extends State<Col> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Column appbar'),
      ),
      body: Container(
        child: const Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Row 1'),
            Text('Row 2'),
            Text('Row 3'),
            Text('Row 4'),
            Text('Row 5'),
            Text('Row 6'),
            Text('GDSC VESIT'),
          ],
        ),
      ),
    );
  }
}
