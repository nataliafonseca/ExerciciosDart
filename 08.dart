import 'dart:io';

class Candidato {
  late String codigo;
  late String curso;
  late String nome;
  late String sexo;
  late int pontuacao;
}

void main() {
  var candidatos = <Candidato>[];
  while (candidatos.length == 0 ||
      candidatos[candidatos.length - 1].codigo != '0000') {
    var candidato = Candidato();

    print("\nCandidato ${candidatos.length + 1}");

    print("Informe o Código");
    candidato.codigo = stdin.readLineSync()!;
    if (candidato.codigo == '0000') {
      break;
    }

    print("Informe o Curso");
    candidato.curso = stdin.readLineSync()!;

    print("Informe o Nome");
    candidato.nome = stdin.readLineSync()!;

    print("Informe o Sexo (F/M)");
    candidato.sexo = stdin.readLineSync()!;

    print("Informe o Pontuação");
    candidato.pontuacao = int.tryParse(stdin.readLineSync()!)!;

    candidatos.add(candidato);
  }

  candidatos
      .where((candidato) => (candidato.pontuacao > 2500 &&
          candidato.curso == 'Ciência da Computação'))
      .forEach((candidato) {
    print('\na) Candidatos de Ciência da Computação com mais de 2500 pontos:');
    print('Código: ${candidato.codigo}');
    print('Nome: ${candidato.nome}');
    print('Pontuação: ${candidato.pontuacao}');
  });

  print('\nb) Candidato do sexo Masculino com a menor pontuação geral:');
  var menor_nota_m = candidatos
      .where((candidato) => candidato.sexo == 'M')
      .reduce((a, b) => a.pontuacao < b.pontuacao ? a : b);
  print('Nome: ${menor_nota_m.nome}');

  print(
      '\nc) Candidato do sexo Masculino de Sistemas da Informação com a maior pontuação geral:');
  var maior_nota_sistemas_m = candidatos
      .where((candidato) =>
          candidato.sexo == 'M' && candidato.curso == 'Sistemas de Informação')
      .reduce((a, b) => a.pontuacao > b.pontuacao ? a : b);
  print('Código: ${maior_nota_sistemas_m.codigo}');

  print('\nd) Percentual de candidatos do sexo masculino e feminino:');
  var candidatos_m = candidatos.where((candidato) => candidato.sexo == 'M');
  var candidatos_f = candidatos.where((candidato) => candidato.sexo == 'F');
  print(
      "Percentual Masculino: ${candidatos_m.length * 100 / candidatos.length}");
  print(
      "Percentual Feminino: ${candidatos_f.length * 100 / candidatos.length}");
}
