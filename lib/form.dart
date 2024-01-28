import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class FormSub extends StatelessWidget {
  const FormSub({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // field1
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Enter Text', prefixIcon: Icon(Icons.edit)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null; // Return null if the input is valid
                      },
                    ),
                    //field2
                    // TextFormField(
                    //   decoration:
                    //       const InputDecoration(hintText: 'Enter Text 2'),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter some text';
                    //     }
                    //     return null; // Return null if the input is valid
                    //   },
                    // ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Great!')),
                              );
                            }
                          },
                          child: Text('Validate')),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
