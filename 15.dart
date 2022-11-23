import 'dart:io';

void main() {
  var bois = [];

  print("Informe a quantidade de bois");
  var qtd = int.tryParse(stdin.readLineSync()!)!;

  for (var i = 1; i <= qtd; i++) {
    print("Informe o peso do boi $i");
    bois.add(double.tryParse(stdin.readLineSync()!)!);
  }

  while (true) {
    print(
        '\nDigite o intervalo de busca, separado por ponto e vírgula (min;max)');
    print('(Para sair, entre SAIR)');
    var query = stdin.readLineSync()!;

    if (query.toUpperCase().trim() == 'SAIR') {
      break;
    }

    var min = int.tryParse(query.split(';')[0])!;
    var max = int.tryParse(query.split(';')[1])!;

    var bois_no_intervalo =
        bois.where((element) => element >= min && element <= max);
    print('Quantidade: ${bois_no_intervalo.length}');
    print('Pesos: ${bois_no_intervalo}');
  }
}
