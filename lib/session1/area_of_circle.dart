import 'dart:io';
import 'dart:math';

void main(){
  print("Enter radius of a circle");
  double radius = double.parse(stdin.readLineSync()!);
  double area = 3.14 * pow(radius, 2);
  print("The Area of the circle is $area");
}