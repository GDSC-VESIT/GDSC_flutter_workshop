import 'package:flutter/material.dart';

class row extends StatefulWidget {
  const row({super.key});

  @override
  State<row> createState() => _rowState();
}

class _rowState extends State<row> {
  final int h = 200;
  final int w = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Row appbar'),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('A', style: TextStyle(fontSize: 30)),
          Text('B', style: TextStyle(fontSize: 30)),
          Text('C', style: TextStyle(fontSize: 30)),
          Text('D', style: TextStyle(fontSize: 30)),
          Text('E', style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}
 // height: double.infinity,
        // width: double.infinity,
        // width: 200,
        // color: Colors.amber,