import 'dart:io';

void main() {
  var vetores = [];

  print("Informe os valores do primeiro vetor separados por vírgula");
  var input1 = stdin.readLineSync()!;
  vetores.add(input1.split(','));
  print("Informe os valores do segundo vetor separados por vírgula");
  var input2 = stdin.readLineSync()!;
  vetores.add(input2.split(','));
  print("Informe os valores do terceiro vetor separados por vírgula");
  var input3 = stdin.readLineSync()!;
  vetores.add(input3.split(','));
  print("Informe os valores do quarto vetor separados por vírgula");
  var input4 = stdin.readLineSync()!;
  vetores.add(input4.split(','));

  var uniao = new List.from(vetores[0])
    ..addAll(vetores[1])
    ..addAll(vetores[2])
    ..addAll(vetores[3]);

  var intersecao_set = vetores.fold<Set>(
      vetores.first.toSet(), (a, b) => a.intersection(b.toSet()));

  var intersecao = List.from(intersecao_set);

  print('União dos vetores: $uniao');
  print('Interseção dos vetores: $intersecao');
}
