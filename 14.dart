import 'dart:io';

void main(List<String> args) {
  print("Informe os valores do primeiro vetor separados por vírgula");
  var input1 = stdin.readLineSync()!;
  var vetor1 = input1.split(',');
  print("Informe os valores do segundo vetor separados por vírgula");
  var input2 = stdin.readLineSync()!;
  var vetor2 = input2.split(',');

  var vetor_final = new List.from(vetor1)..addAll(vetor2);

  print(vetor_final);
}
