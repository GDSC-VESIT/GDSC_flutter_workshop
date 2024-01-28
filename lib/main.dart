import 'package:example/appb.dart';
import 'package:example/col.dart';
import 'package:example/form.dart';
import 'package:example/layouts/grid.dart';
import 'package:example/layouts/list.dart';
import 'package:example/richtext.dart';
import 'package:example/row.dart';
import 'package:example/scaff.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//main->decision
//runapp-> helper robots
//myapp-> layout/map/design of floor plan

//class animal{
//string sound;
//}

// class dog extends animal{
//  string name = 'pilchal';
//  super.sound = 'bhau bhau';
// }

// class cats extends animal{

// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Grid(),
      // const List(),
      // const FormSub(),
      // const Col()
      // const row(),
      // const appB(),
      // const Scaf(),
      // const Richtext(),
      // const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
