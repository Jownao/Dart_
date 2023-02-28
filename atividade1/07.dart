import 'dart:io';

void main() {
  print("Digite o valor de X: ");
  double x = double.parse(stdin.readLineSync()!);

  print("Digite o número de termos: ");
  int n = int.parse(stdin.readLineSync()!);

  double s = 0;
  double fat = 1;
  double pot = x;

  for (int i = 2; i <= n + 1; i++) {
    s += pot / fat;
    pot *= x;
    fat *= i;
  }

  print("O valor da série é: $s");
}
