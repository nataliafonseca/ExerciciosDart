import 'dart:io';

void main() {
  print("Informe o número");
  var num = stdin.readLineSync()!;

  print(num.split('').reversed.join(''));
}
