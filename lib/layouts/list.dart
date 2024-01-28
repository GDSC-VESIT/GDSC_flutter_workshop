import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: ListView.separated(
        itemCount: 6,
        itemBuilder: (BuildContext build, int index) {
          return ListTile(
            title: const Text('Items'),
            tileColor: Colors.orangeAccent,
            onTap: () {},
            leading: const Icon(Icons.person),
          );
        },
        separatorBuilder: (BuildContext build, int index) => const Divider(),
      ),
    );
  }
}
