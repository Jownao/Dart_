void main() {
  List<int> conjunto = [1, 2, 3, 2, 1, 4, 5, 4, 2];

  Map<int, int> frequencia = {};

  for (int numero in conjunto) {
    if (frequencia.containsKey(numero)) {
      frequencia[numero]++;
    } else {
      frequencia[numero] = 1;
    }
  }

  for (int numero in conjunto) {
    print("$numero aparece ${frequencia[numero]} vez(es)");
  }
}
