import 'dart:io';

void main() {
  String nome;
  String sexo;
  double peso;
  double maiorPesoFem = 0;
  String nomeMaiorPesoFem;
  int contBaixoPeso = 0;
  int contNormal = 0;
  int contAltoPeso = 0;

  do {
    // Leitura dos dados do recém-nascido
    stdout.write('Nome: ');
    nome = stdin.readLineSync();
    if (nome == '0') break; // Flag para encerrar o programa
    stdout.write('Sexo (M/F): ');
    sexo = stdin.readLineSync();
    stdout.write('Peso (kg): ');
    peso = double.parse(stdin.readLineSync());

    // Classificação de peso
    String classificacao;
    if (peso <= 2) {
      classificacao = 'Baixo Peso';
      contBaixoPeso++;
    } else if (peso <= 4) {
      classificacao = 'Normal';
      contNormal++;
    } else {
      classificacao = 'Alto Peso';
      contAltoPeso++;
    }

    // Impressão dos dados do recém-nascido
    print('\nNome: $nome');
    print('Sexo: $sexo');
    print('Peso: $peso kg');
    print('Classificação: $classificacao');

    // Verificação do maior peso entre as recém-nascidas do sexo feminino
    if (sexo == 'F' && peso > maiorPesoFem) {
      maiorPesoFem = peso;
      nomeMaiorPesoFem = nome;
    }
  } while (nome != '0');

  // Impressão do nome da recém-nascida do sexo feminino com o maior peso
  if (maiorPesoFem > 0) {
    print('\nNome da recém-nascida do sexo feminino com o maior peso: $nomeMaiorPesoFem');
  } else {
    print('\nNão houve recém-nascidas do sexo feminino.');
  }

  // Cálculo e impressão do percentual de recém-nascidos em cada classificação de peso
  int total = contBaixoPeso + contNormal + contAltoPeso;
  double percBaixoPeso = contBaixoPeso / total * 100;
  double percNormal = contNormal / total * 100;
  double percAltoPeso = contAltoPeso / total * 100;

  print('\nPercentual de recém-nascidos em cada classificação de peso:');
  print('Baixo Peso: ${percBaixoPeso.toStringAsFixed(2)}%');
  print('Normal: ${percNormal.toStringAsFixed(2)}%');
  print('Alto Peso: ${percAltoPeso.toStringAsFixed(2)}%');
}
