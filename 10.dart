import 'dart:io';

class Candidato {
  late String nome;
  late String sexo;
  late int idade;
  late bool experiencia;
}

void main() {
  var candidatos = <Candidato>[];
  while (candidatos.length == 0 ||
      candidatos[candidatos.length - 1].nome != 'FIM') {
    var candidato = Candidato();

    print("\nCandidato ${candidatos.length + 1}");

    print("Informe o Nome");
    candidato.nome = stdin.readLineSync()!;
    if (candidato.nome == 'FIM') {
      break;
    }

    print("Informe o Sexo (F/M)");
    candidato.sexo = stdin.readLineSync()!;

    print("Informe a Idade");
    candidato.idade = int.tryParse(stdin.readLineSync()!)!;

    print("Possui experiência? (S/N)");
    candidato.experiencia = stdin.readLineSync()! == 'S';

    candidatos.add(candidato);
  }

  print('\na) Quantidade de candidatos do sexo masculino e feminino:');
  var candidatos_m = candidatos.where((candidato) => candidato.sexo == 'M');
  var candidatos_f = candidatos.where((candidato) => candidato.sexo == 'F');
  print("Quantidade Masculino: ${candidatos_m.length}");
  print("Quantidade Feminino: ${candidatos_f.length}");

  print('\nb) Idade Média dos homens com experiência:');
  var soma_idade_m_exp = 0;
  var candidatos_m_exp =
      candidatos_m.where((candidato) => (candidato.experiencia));
  candidatos_m_exp.forEach((candidato) {
    soma_idade_m_exp += candidato.idade;
  });
  var media_idade_m_exp = soma_idade_m_exp / candidatos_m_exp.length;
  print(media_idade_m_exp);

  print('\nc) A porcentagem dos homens com mais de 45 anos:');
  var candidatos_m_45p =
      candidatos_m.where((candidato) => candidato.idade > 45);
  print('${candidatos_m_45p.length * 100 / candidatos_m.length}');

  print('\nd) Quantidade de mulheres com menos de 30 anos com experiência:');
  var candidatos_f_30l_exp = candidatos_f
      .where((candidato) => candidato.sexo == 'F' && candidato.experiencia);
  print(candidatos_f_30l_exp.length);

  print('\nd) Mulher com menor idade que já tem experiencia:');
  var mais_nova_exp = candidatos_f
      .where((candidato) => candidato.experiencia)
      .reduce((a, b) => a.idade < b.idade ? a : b);
  ;
  print(mais_nova_exp.nome);
}
