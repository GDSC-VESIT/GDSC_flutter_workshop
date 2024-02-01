import 'dart:io';

void main() {
  print('Hello World');

  stdout.write('Enter your name:');
  String? name = stdin.readLineSync();

  stdout.write('Enter your roll number:');
  int? roll = int.parse(stdin.readLineSync()!);

  // ignore: avoid_print
  print("Your roll number is $name and roll no. is $roll");
}
