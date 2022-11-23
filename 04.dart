import 'dart:io';

void main() {
  var total_alunos = 0;
  var total_alunos_f = 0;
  var qtd_aprovados = 0;
  var soma_media_alunos = 0.0;
  var soma_media_f = 0.0;

  var melhor_f_mat = '';
  var melhor_f_med = 0.0;
  var melhor_m_mat = '';
  var melhor_m_med = 0.0;

  var matricula = '';
  while (matricula != '00000') {
    print("Entrada ${total_alunos + 1} \n");

    print("Informe a matricula");
    matricula = stdin.readLineSync()!;
    if (matricula == '00000') {
      break;
    }

    print("Informe o nome");
    var nome = stdin.readLineSync()!;

    print("Informe o sexo (M/F)");
    var sexo = stdin.readLineSync()!;

    print("Informe a nota 1");
    var nota1 = double.tryParse(stdin.readLineSync()!);

    print("Informe a nota 2");
    var nota2 = double.tryParse(stdin.readLineSync()!);

    print("Informe a nota 3");
    var nota3 = double.tryParse(stdin.readLineSync()!);

    print("Informe a quantidade de faltas");
    var faltas = int.tryParse(stdin.readLineSync()!);
    print('\n');

    var media = (nota1! + nota2! + nota3!) / 3;

    total_alunos += 1;
    soma_media_alunos += media;

    if (media >= 7.0 && faltas! <= 18) {
      qtd_aprovados += 1;
    }

    if (sexo.toUpperCase() == 'F') {
      total_alunos_f += 1;
      soma_media_f += media;
      if (faltas! <= 18 && media > melhor_f_med) {
        melhor_f_mat = matricula;
      }
    } else if (sexo.toUpperCase() == 'M') {
      if (faltas! <= 18 && media > melhor_m_med) {
        melhor_m_mat = matricula;
      }
    }
  }

  print("a) Media da turma: ${soma_media_alunos / total_alunos}");
  print("b) Percentual de aprovados: ${qtd_aprovados * 100 / total_alunos}");
  print("c) Matricula da maior média aprovada(F): ${melhor_f_mat}");
  print("c) Matricula da maior média aprovada(M): ${melhor_m_mat}");
  print("d) Média sexo feminino: ${soma_media_f * 100 / total_alunos_f}");
}
