import 'dart:io';

void lerVetor(List<int> vetor, String nomeVetor) {
  print("Digite os elementos do vetor $nomeVetor:");
  for (int i = 0; i < vetor.length; i++) {
    stdout.write("Elemento ${i + 1}: ");
    vetor[i] = int.parse(stdin.readLineSync()!);
  }
}

void somarVetores(List<int> vetor1, List<int> vetor2, List<int> vetorResultado) {
  for (int i = 0; i < vetor1.length; i++) {
    vetorResultado[i] = vetor1[i] + vetor2[i];
  }
}

void imprimirVetor(List<int> vetor, String nomeVetor) {
  print("\nVetor $nomeVetor:");
  for (int i = 0; i < vetor.length; i++) {
    stdout.write("${vetor[i]} ");
  }
  print("\n");
}

void main() {
  const tamanhoVetor = 5;
  var vetor1 = List<int>.filled(tamanhoVetor, 0);
  var vetor2 = List<int>.filled(tamanhoVetor, 0);
  var vetorResultado = List<int>.filled(tamanhoVetor, 0);

  lerVetor(vetor1, "1");
  lerVetor(vetor2, "2");

  somarVetores(vetor1, vetor2, vetorResultado);
  imprimirVetor(vetorResultado, "Resultado");

  var somaElementos = vetorResultado.reduce((a, b) => a + b);
  print("Soma dos elementos do vetor resultado: $somaElementos");
}
