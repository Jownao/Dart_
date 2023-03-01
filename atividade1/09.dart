void main() {
  for (int i = 1000; i <= 9999; i++) {
    int primeiro = i ~/ 100; // obtém as duas primeiras casas do número
    int segundo = i % 100; // obtém as duas últimas casas do número
    int soma = primeiro + segundo;
    int quadrado = soma * soma;
    if (i == quadrado) {
      print(i);
    }
  }
}
