import 'dart:io';
import 'dart:math';

void main() {
  print("Informe a quantidade de termos");
  var n = int.tryParse(stdin.readLineSync()!);
  print("\n");

  var list = [];
  for (var i = 1; i <= n!; i++) {
    var it = (i / 3).ceil() - 1;

    if (i % 3 == 1) {
      list.add(1 * pow(2, it));
    } else if (i % 3 == 2) {
      list.add(5 + 5 * it);
    } else {
      list.add(100 - it * 10);
    }
  }

  print(list);
  print("\n");
}
