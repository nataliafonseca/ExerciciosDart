void main() {
  for (var i = 1000; i <= 9999; i++) {
    var num1 = int.parse('${i}'.substring(0, 2));
    var num2 = int.parse('${i}'.substring(2));
    var soma = num1 + num2;
    var total = soma * soma;
    if (total == i) {
      print(i);
    }
  }
}
