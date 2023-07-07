import 'dart:io';

void main(){
  print('Enter first No. ');
  double firstNumber = double.parse(stdin.readLineSync()!);

  print('Enter second No. ');
  double secondNumber = double.parse(stdin.readLineSync()!);

  print('Enter third No. ');
  double thirdNumber = double.parse(stdin.readLineSync()!);

  double result = (firstNumber + secondNumber + thirdNumber) / 3;

  print('The average of three variables is $result');
}