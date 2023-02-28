import 'dart:math';

void main() {
  int n = 7; // número de termos da série
  double S = 0;
  
  for (int i = 0; i < n; i++) {
    int k = i * 4 + 4;
    int f = factorial(k);
    int p = (i + 1) * 5;
    double x = pow(2 * i + 3, k) / p * f;
    S += (i % 2 == 0) ? x : -x;
  }
  
  print('S = $S');
}

int factorial(int n) {
  if (n <= 1) {
    return 1;
  }
  return n * factorial(n - 1);
}
