import 'dart:io';

void main(){
  print('Enter Your Degree');

  int degree = int.parse(stdin.readLineSync()!);

  if(degree >= 85 ){
    print('Your Grade Is A');
  }else if(degree >= 75){
    print('Your Grade Is B');
  }else if(degree >= 60){
    print('Your Grade Is c');
  }else if(degree >= 50){
    print('Your Grade Is D');
  }else {
    print('Your Grade Is F');
  }
}