import 'dart:io';

void main() {
  int n;
  stdout.write("Digite o número de termos da série: ");
  n = int.parse(stdin.readLineSync());

  int a = 1, b = 5, c = 100;
  for (int i = 1; i <= n; i++) {
    stdout.write("$a $b $c ");
    a = a * 2;
    b = b + 5;
    c = c - a;
  }
}
