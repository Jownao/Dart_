import 'dart:io';

void main() {
  int contFem = 0;
  int contMasc = 0;
  int contHomensExp = 0;
  int somaIdadeHomensExp = 0;
  int contHomensAcima45 = 0;
  int contMulheresExpIdadeInf30 = 0;
  int menorIdadeExp = 200;
  String nomeMenorIdadeExp;
  
  print('=== LEVANTAMENTO DE PERFIL DE CANDIDATOS ===');
  
  while (true) {
    print('\nDigite o nome do candidato ou FIM para encerrar:');
    String nome = stdin.readLineSync()!;
    
    if (nome == 'FIM') {
      break;
    }
    
    print('Digite o sexo do candidato (M/F):');
    String sexo = stdin.readLineSync()!;
    
    print('Digite a idade do candidato:');
    int idade = int.parse(stdin.readLineSync()!);
    
    print('O candidato possui experiência no serviço? (S/N)');
    String exp = stdin.readLineSync()!;
    
    if (sexo == 'F') {
      contFem++;
    } else {
      contMasc++;
      if (exp == 'S') {
        contHomensExp++;
        somaIdadeHomensExp += idade;
        if (idade > 45) {
          contHomensAcima45++;
        }
      }
    }
    
    if (sexo == 'F' && idade < 30 && exp == 'S') {
      contMulheresExpIdadeInf30++;
    }
    
    if (exp == 'S' && idade < menorIdadeExp) {
      menorIdadeExp = idade;
      nomeMenorIdadeExp = nome;
    }
  }
  
  double percHomensAcima45 = (contHomensAcima45 / contMasc) * 100;
  double mediaIdadeHomensExp = somaIdadeHomensExp / contHomensExp;
  
  print('\n== RESULTADOS ==');
  print('Número de candidatos do sexo feminino: $contFem');
  print('Número de candidatos do sexo masculino: $contMasc');
  print('Idade média dos homens com experiência no serviço: $mediaIdadeHomensExp');
  print('Porcentagem de homens com mais de 45 anos: $percHomensAcima45%');
  print('Número de mulheres com idade inferior a 30 anos e com experiência no serviço: $contMulheresExpIdadeInf30');
  print('Nome da candidata com menor idade e experiência no serviço: $nomeMenorIdadeExp');
}
