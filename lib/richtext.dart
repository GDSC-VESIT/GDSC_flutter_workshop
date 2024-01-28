import 'package:flutter/material.dart';

class Richtext extends StatelessWidget {
  const Richtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
          Center(
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "hello! "),
                    TextSpan(
                        text: "Darkness ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(text: "my old friend!"),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
