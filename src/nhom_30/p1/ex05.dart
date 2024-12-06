/*
Bài tập: GPT ax^2 + bx+c =0;
*/
import 'dart:io';
import 'dart:math';

void main() {
  double a = 0, b = 0, c = 0;
  // Input a
  do {
    stdout.write('Nhập hệ số a (a khác 0): ');
    String? input = stdin.readLineSync();
    if (input != null) {
      a = double.tryParse(input) ?? 0;
    }
    if (a == 0) {
      print("Vui lòng nhập lại: ");
    }
  } while (a == 0);

  // Input b
  stdout.write('Nhập hệ số b: ');
  String? inputB = stdin.readLineSync();
  if (inputB != null) {
    b = double.tryParse(inputB) ?? 0;
  }

  // Input c
  stdout.write('Nhập hệ số c: ');
  String? inputC = stdin.readLineSync();
  if (inputC != null) {
    c = double.tryParse(inputC) ?? 0;
  }

  // Tính delta
  double delta = b*b - 4*a*c;

  // Hiển thị phương trình:
  print('Phương trình: ${a}x^2 + ${b}x + $c = 0');

  // GPT
  if(delta<0){
    print('Phương trình vô nghiệm!');
  }else if (delta==0){
    double x = -b/(2*a);
    x = double.parse(x.toStringAsFixed(2));
    print('Phương trình có nghiệm kép x = $x');
  }else{
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    // Làm tròn đến 2 chữ số thập phân
    x1 = double.parse(x1.toStringAsFixed(2));
    x2 = double.parse(x2.toStringAsFixed(2));
    print('Phương trình có 2 nghiệm phân biệt:');
    print('x1 = $x1');
    print('x2 = $x2');
  }
}
