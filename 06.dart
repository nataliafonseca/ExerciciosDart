import 'dart:math';
import 'dart:io';

int getRandomBetween(int min, int max) {
  int min = 1;
  int max = 100;
  var rnd = new Random();
  var r = min + rnd.nextInt(max - min);
  return r;
}

void main() {
  var num = getRandomBetween(1, 100);

  var chute = 0;
  var min = 1;
  var max = 100;
  while (chute != num) {
    print("Entre seu chute");
    chute = int.tryParse(stdin.readLineSync()!)!;

    if (chute == num) {
      print('Parabéns, você acertou!');
    } else if (chute > num) {
      max = chute;
      print('O número está entre ${min} e ${max}');
    } else {
      min = chute;
      print('O número está entre ${min} e ${max}');
    }
  }
}
