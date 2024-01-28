import 'package:flutter/material.dart';

class Scaf extends StatefulWidget {
  const Scaf({super.key});

  @override
  State<Scaf> createState() => _ScafState();
}

class _ScafState extends State<Scaf> {
  late int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Submit'),
        ),
      ),
      drawer: const Drawer(
        child: SafeArea(
            child: ListTile(
          title: Text('Itemss'),
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (int index) {},
        selectedItemColor: Colors.amber,
      ),
    );
  }
}
