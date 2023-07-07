import 'dart:io';

void main(){
  print("Put A Fahrenheit degree");
  double fahrenheit = double.parse(stdin.readLineSync()!);
  double celsius = (fahrenheit - 32) * 5 / 9;
  print(celsius);
}

