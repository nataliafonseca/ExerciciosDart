import 'dart:io';

class Professor {
  late String codigo;
  late String nome;
  late String sexo;
  late int qtd_horas;

  double getSalarioBruto() {
    return this.qtd_horas * 12.30;
  }

  double getSalarioLiquido() {
    if (this.sexo == 'F') {
      return this.getSalarioBruto() * 0.95;
    }
    return this.getSalarioBruto() * 0.9;
  }
}

void main() {
  var professores = <Professor>[];
  while (professores.length == 0 ||
      professores[professores.length - 1].codigo != '9999') {
    var professor = Professor();

    print("\nProfessor ${professores.length + 1}");

    print("Informe o código");
    professor.codigo = stdin.readLineSync()!;
    if (professor.codigo == '9999') {
      break;
    }

    print("Informe o nome");
    professor.nome = stdin.readLineSync()!;

    print("Informe o sexo (F/M)");
    professor.sexo = stdin.readLineSync()!;

    print("Informe a quantidade de horas");
    professor.qtd_horas = int.tryParse(stdin.readLineSync()!)!;

    professores.add(professor);
  }

  print('\na) Listagem:');
  professores.forEach((professor) {
    print("\nCódigo: ${professor.codigo}");
    print("Nome: ${professor.nome}");
    print("Salário Bruto: ${professor.getSalarioBruto()}");
    print("Salário Líquido: ${professor.getSalarioLiquido()}");
  });

  print('\nb) Média do Salário Líquido por sexo:');
  var professores_f =
      professores.where((element) => element.sexo.toUpperCase() == 'F');
  var soma_liq_f = 0.0;
  professores_f.forEach((element) {
    soma_liq_f += element.getSalarioLiquido();
  });
  var media_liq_f =
      professores_f.length > 0 ? soma_liq_f / professores_f.length : 0;
  print('Feminino: ${media_liq_f}');

  var professores_m =
      professores.where((element) => element.sexo.toUpperCase() == 'M');
  var soma_liq_m = 0.0;
  professores_f.forEach((element) {
    soma_liq_f += element.getSalarioLiquido();
  });
  var media_liq_m =
      professores_m.length > 0 ? soma_liq_m / professores_m.length : 0;
  print('Masculino: ${media_liq_m}');
}
