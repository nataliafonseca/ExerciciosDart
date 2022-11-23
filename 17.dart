import 'dart:io';

void main() {
  print("Informe os valores do primeiro vetor separados por vírgula");
  var input1 = stdin.readLineSync()!;
  var vetor1 = input1.split(',');
  print("Informe os valores do segundo vetor separados por vírgula");
  var input2 = stdin.readLineSync()!;
  var vetor2 = (input2.split(','));

  var mais_longo = vetor1.length > vetor2.length ? vetor1 : vetor2;
  var vetor_final = [];

  for (var i = 0; i < mais_longo.length; i++) {
    vetor_final.add(0.0);

    if (vetor1.length >= i + 1) {
      vetor_final[i] += double.tryParse(vetor1[i]);
    }
    if (vetor2.length >= i + 1) {
      vetor_final[i] += double.tryParse(vetor2[i]);
    }
  }

  print('Vetor Final: ${vetor_final}');
  print('Somatório do Vetor Final: ${vetor_final.reduce((a, b) => a + b)}');
}
