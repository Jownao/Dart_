import 'dart:math';

void main() {
  Random random = Random();
  int numeroAleatorio = random.nextInt(100) + 1;
  int limiteInferior = 0;
  int limiteSuperior = 100;
  int chute;

  print('Adivinhe o número gerado entre 1 e 100!');

  do {
    print('Digite um número entre $limiteInferior e $limiteSuperior:');
    chute = int.parse(stdin.readLineSync()!);

    if (chute < numeroAleatorio) {
      limiteInferior = chute;
      print('O número está entre $limiteInferior e $limiteSuperior');
    } else if (chute > numeroAleatorio) {
      limiteSuperior = chute;
      print('O número está entre $limiteInferior e $limiteSuperior');
    }
  } while (chute != numeroAleatorio);

  print('Parabéns! Você acertou o número $numeroAleatorio!');
}
