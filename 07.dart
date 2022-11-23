import 'dart:io';
import 'dart:math';

int factorial(int n) {
  return n == 1 ? 1 : n * factorial(n - 1);
}

void main() {
  print("Informe a quantidade de termos");
  var n = int.tryParse(stdin.readLineSync()!)!;
  print("Informe o valor de X");
  var num = int.tryParse(stdin.readLineSync()!)!;

  var dens = [1, 2, 3, 4];
  while (dens.length < n) {
    if (dens[dens.length] - 1 == 1) {
      dens.add(2);
    } else if (dens[dens.length] - 1 == 2) {
      if (dens[dens.length - 2] == 1) {
        dens.add(3);
      } else {
        dens.add(1);
      }
    } else if (dens[dens.length] - 1 == 3) {
      if (dens[dens.length - 2] == 2) {
        dens.add(4);
      } else {
        dens.add(2);
      }
    } else {
      dens.add(3);
    }
  }

  var total = 0.0;
  for (var i = 1; i <= n; i++) {
    int den = dens[i - 1];
    int exp = i + 2;

    double valor = pow(num, exp) / factorial(den);
    total += valor;
  }
  print("total: $total");
}
