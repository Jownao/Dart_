import 'dart:io';

void main() {
  String codigo, nome, sexo;
  int numHoras;
  double salarioBruto, salarioLiquido, mediaHomens = 0, mediaMulheres = 0;
  int countHomens = 0, countMulheres = 0;
  double desconto;

  while (true) {
    print('Digite o código do professor (9999 para sair): ');
    codigo = stdin.readLineSync()!;

    if (codigo == '9999') {
      break;
    }

    print('Digite o nome do professor: ');
    nome = stdin.readLineSync()!;

    print('Digite o sexo do professor (M/F): ');
    sexo = stdin.readLineSync()!;

    print('Digite o número de horas de aula dadas no mês: ');
    numHoras = int.parse(stdin.readLineSync()!);

    salarioBruto = numHoras * 12.30;

    if (sexo == 'M') {
      desconto = salarioBruto * 0.1;
      countHomens++;
    } else {
      desconto = salarioBruto * 0.05;
      countMulheres++;
    }

    salarioLiquido = salarioBruto - desconto;

    print('Código: $codigo | Nome: $nome | Salário Bruto: R\$$salarioBruto | Salário Líquido: R\$$salarioLiquido\n');

    if (sexo == 'M') {
      mediaHomens += salarioLiquido;
    } else {
      mediaMulheres += salarioLiquido;
    }
  }

  if (countHomens > 0) {
    mediaHomens /= countHomens;
    print('Média salarial dos homens: R\$${mediaHomens.toStringAsFixed(2)}');
  }

  if (countMulheres > 0) {
    mediaMulheres /= countMulheres;
    print('Média salarial das mulheres: R\$${mediaMulheres.toStringAsFixed(2)}');
  }
}
