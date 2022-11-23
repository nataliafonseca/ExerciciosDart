import 'dart:io';
import 'dart:math';

int factorial(int n) {
  return n == 1 ? 1 : n * factorial(n - 1);
}

void main() {
  print("Informe a quantidade de termos");
  var n = int.tryParse(stdin.readLineSync()!);

  var total = 0.0;
  for (var i = 1; i <= n!; i++) {
    int num = i * 2 + 1;
    int den = i * 5;
    int exp = i * 4;

    double valor = pow(num, factorial(exp)) / den;
    total += valor;
  }
  print("total: $total");
}
