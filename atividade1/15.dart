import 'dart:io';

void main() {
  List<double> pesos = [];

  // Lê o número e o peso dos bois
  int n;
  do {
    stdout.write('Digite o número de bois (N): ');
    n = int.parse(stdin.readLineSync()!);
  } while (n <= 0);

  for (int i = 0; i < n; i++) {
    stdout.write('Digite o peso do boi ${i + 1}: ');
    double peso = double.parse(stdin.readLineSync()!);
    pesos.add(peso);
  }

  // Possibilita pesquisas por intervalo de peso
  bool continuar = true;
  while (continuar) {
    stdout.write('Digite o peso mínimo para a pesquisa: ');
    double pesoMin = double.parse(stdin.readLineSync()!);
    stdout.write('Digite o peso máximo para a pesquisa: ');
    double pesoMax = double.parse(stdin.readLineSync()!);

    // Imprime os bois com peso dentro do intervalo
    bool encontrouBoi = false;
    for (double peso in pesos) {
      if (peso >= pesoMin && peso <= pesoMax) {
        print('Boi com peso $peso');
        encontrouBoi = true;
      }
    }

    if (!encontrouBoi) {
      print('Nenhum boi encontrado com peso dentro do intervalo.');
    }

    // Verifica se o usuário deseja fazer outra pesquisa
    stdout.write('Deseja fazer outra pesquisa? (S/N) ');
    String resposta = stdin.readLineSync()!.toUpperCase();
    continuar = resposta == 'S';
  }
}
