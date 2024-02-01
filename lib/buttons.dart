import 'package:flutter/material.dart';

class ButtonExamples extends StatefulWidget {
  const ButtonExamples({super.key});

  @override
  State<ButtonExamples> createState() => _ButtonExamplesState();
}

class _ButtonExamplesState extends State<ButtonExamples> {
  String dropVal = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //elevated button
              ElevatedButton(
                  onPressed: () {
                    print('Elevated button pressed');
                  },
                  child: Text('Elevated')),
              // textbutton
              TextButton(
                  onPressed: () {
                    print('Text button pressed');
                  },
                  child: Text('TextButton')),
              //outlined button
              OutlinedButton(
                  onPressed: () {
                    print('Outlined button pressed');
                  },
                  child: Text('Outlined')),
              //icon button
              IconButton.filled(
                  onPressed: () {
                    print('Icon button pressed');
                  },
                  icon: Icon(
                    Icons.arrow_circle_down,
                    size: 40,
                  )),
              //dropdown button
              DropdownButton<String>(
                value: dropVal,
                icon: Icon(Icons.arrow_drop_down),
                items: const [
                  DropdownMenuItem<String>(
                    value: 'One',
                    child: Text('One'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Two',
                    child: Text('Two'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Three',
                    child: Text('Three'),
                  ),
                ],
                onChanged: (String? newVal) {
                  setState(() {
                    dropVal = newVal!;
                  });
                },
              ),
              //custom button
              GestureDetector(
                onTap: () {
                  print('Custom button tapped');
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text('Custom Button')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
