import 'dart:io';

void main() {
  var bebes = [];
  var total_bebes = 0;
  var total_baixo_peso = 0;
  var total_peso_normal = 0;
  var total_alto_peso = 0;
  var f_maior_peso = 0.0;
  var f_maior_peso_nome = '';

  print("Informe a quantidade de bebes");
  var n = int.tryParse(stdin.readLineSync()!);
  print("\n");

  for (var i = 1; i <= n!; i++) {
    print("Entrada ${bebes.length + 1} \n");

    print("Informe o nome");
    var nome = stdin.readLineSync()!;
    print("Informe o sexo (M/F)");
    var sexo = stdin.readLineSync()!;
    print("Informe o peso em kg");
    var peso = double.tryParse(stdin.readLineSync()!);
    print('\n');

    var classificacao = '';
    if (peso! <= 2) {
      classificacao = 'Baixo Peso';
      total_baixo_peso += 1;
    } else if (peso <= 4) {
      classificacao = 'Normal';
      total_peso_normal += 1;
    } else {
      classificacao = 'Alto Peso';
      total_alto_peso += 1;
    }

    if (sexo.toUpperCase() == 'F') {
      if (peso > f_maior_peso) {
        f_maior_peso = peso;
        f_maior_peso_nome = nome;
      }
    }

    bebes.add({
      'nome': nome,
      'sexo': sexo.toUpperCase(),
      'classificacao': classificacao
    });
  }

  print('a)');
  bebes.forEach((bebe) => {
        print('Nome: ${bebe['nome']}'),
        print('Sexo: ${bebe['sexo']}'),
        print('Classificação: ${bebe['classificacao']}'),
      });

  print("\nMenina com maior peso: ${f_maior_peso_nome}");
  print("Percentual Baixo Peso: ${total_baixo_peso * 100 / bebes.length}");
  print("Percentual Peso Normal: ${total_peso_normal * 100 / bebes.length}");
  print("Percentual Alto Peso: ${total_alto_peso * 100 / bebes.length}");
}
