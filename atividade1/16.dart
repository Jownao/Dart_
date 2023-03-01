import 'dart:io';

void main() {
  List<List<int>> vetores = List.generate(4, (_) => []);
  
  // Lendo tamanho e elementos dos vetores
  for (int i = 0; i < 4; i++) {
    stdout.write("Digite o tamanho do vetor ${i + 1}: ");
    int tamanho = int.parse(stdin.readLineSync()!);
    
    stdout.write("Digite os elementos do vetor ${i + 1}: ");
    String entrada = stdin.readLineSync()!;
    List<int> elementos = entrada.split(' ').map((e) => int.parse(e)).toList();
    
    vetores[i] = elementos;
  }
  
  // Gerando um quinto vetor com os valores dos outros vetores de forma ordenada
  List<int> quintoVetor = [];
  for (List<int> vetor in vetores) {
    quintoVetor.addAll(vetor);
  }
  quintoVetor.sort();
  
  // Imprimindo o quinto vetor
  print("\nQuinto vetor: $quintoVetor");
  
  // Gerando um vetor só com os elementos que tenham intercessão com os 4 vetores
  List<int> interseccao = [];
  for (int i = 0; i < vetores[0].length; i++) {
    int elemento = vetores[0][i];
    
    if (vetores[1].contains(elemento) && vetores[2].contains(elemento) && vetores[3].contains(elemento)) {
      interseccao.add(elemento);
    }
  }
  
  // Imprimindo a interseção
  print("Interseção: $interseccao");
}
