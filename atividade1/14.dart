import 'dart:io';

void main() {
  List<int> vetor1 = [], vetor2 = [], vetor3 = [];
  int tamanho1, tamanho2, i, j;

  // Lê o tamanho e os elementos do primeiro vetor
  print("Digite o tamanho do primeiro vetor: ");
  tamanho1 = int.parse(stdin.readLineSync()!);
  for (i = 0; i < tamanho1; i++) {
    print("Digite o ${i + 1}º elemento do primeiro vetor: ");
    vetor1.add(int.parse(stdin.readLineSync()!));
  }

  // Lê o tamanho e os elementos do segundo vetor
  print("Digite o tamanho do segundo vetor: ");
  tamanho2 = int.parse(stdin.readLineSync()!);
  for (i = 0; i < tamanho2; i++) {
    print("Digite o ${i + 1}º elemento do segundo vetor: ");
    vetor2.add(int.parse(stdin.readLineSync()!));
  }

  // Gera o terceiro vetor ordenado
  i = j = 0;
  while (i < tamanho1 && j < tamanho2) {
    if (vetor1[i] < vetor2[j]) {
      vetor3.add(vetor1[i]);
      i++;
    } else {
      vetor3.add(vetor2[j]);
      j++;
    }
  }

  while (i < tamanho1) {
    vetor3.add(vetor1[i]);
    i++;
  }

  while (j < tamanho2) {
    vetor3.add(vetor2[j]);
    j++;
  }

  // Imprime o terceiro vetor ordenado
  print("Terceiro vetor ordenado: ");
  for (i = 0; i < vetor3.length; i++) {
    print("${vetor3[i]} ");
  }
}
