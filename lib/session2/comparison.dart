import 'dart:io';

void main(){
  print('Enter a 1st number');
  double num1 = double.parse(stdin.readLineSync()!);
  print('Enter a 2nd number');
  double num2 = double.parse(stdin.readLineSync()!);

  if (num1 == num2){
    print('Numbers are equal');
  } else if(num1 > num2){
    print("1st number greater than second one ($num1)");
  } else if(num2 > num1){
    print("2nd number greater than first one ($num2)");
  }

}