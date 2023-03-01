import 'dart:io';

void main() {
  print("Digite um número inteiro:");
  int numero = int.parse(stdin.readLineSync()!);
  int numeroInvertido = 0;
  
  while (numero != 0) {
    int digito = numero % 10;
    numeroInvertido = numeroInvertido * 10 + digito;
    numero = (numero / 10).floor();
  }
  
  print("Número invertido: $numeroInvertido");
}
