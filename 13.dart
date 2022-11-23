import 'dart:io';

void main(List<String> args) {
  print("Informe os valores separados por vírgula");
  var input = stdin.readLineSync()!;
  var lista = input.split(',');

  var dict = Map();
  lista.forEach((element) {
    if (dict.containsKey(element)) {
      dict[element] += 1;
    } else {
      dict[element] = 1;
    }
  });

  print(dict);
}
