import 'dart:io';

void main() {
  const boloPrecos = {
    'ovos': 5.5,
    'chocolate': 7.5,
    'cenoura': 6.5,
  };

  print("Entre a sua order, separe os itens por virgula.");
  var ordem = stdin.readLineSync();

  var total = 0.0;
  ordem!.split(',').forEach((item) => {
        if (boloPrecos.containsKey(item))
          {total = total + boloPrecos[item]!}
        else
          {print("$item não está no cardápio.")}
      });

  print("Total = $total");
}
