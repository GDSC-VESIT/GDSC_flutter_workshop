import 'package:flutter/material.dart';

class appB extends StatefulWidget {
  const appB({super.key});

  @override
  State<appB> createState() => _appBState();
}

class _appBState extends State<appB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is AppBar'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cloud_upload))
        ],
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        // shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(20),
        //         bottomRight: Radius.circular(20))),
      ),
      body: const Center(child: Text('Body')),
    );
  }
}
