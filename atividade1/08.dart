import 'dart:io';

void main() {
  int totalCandidatos = 0;
  int totalMasculino = 0;
  int totalFeminino = 0;
  int totalCienciaComp = 0;
  int totalSistInform = 0;
  int maiorPontuacaoSistInform = 0;
  int menorPontuacaoGeralMasculino = 5000; //valor máximo de pontuação é 5000
  String codigoMaxPontuacaoSI = '';
  String codigoMaiorPontuacaoSistInform = '';
  String nomeMenorPontuacao = '';
  
  while (true) {
    print("Digite as informações do candidato (FLAG'0000' para encerrar):");
    print("Código:");
    String codigo = stdin.readLineSync()!;
    
    if (codigo == "FLAG'0000'") {
      break;
    }
    
    print("Curso (CC ou SI):");
    String curso = stdin.readLineSync()!;
    
    print("Nome:");
    String nome = stdin.readLineSync()!;
    
    print("Sexo (M ou F):");
    String sexo = stdin.readLineSync()!;
    
    print("Pontuação (0-5000):");
    int pontuacao = int.parse(stdin.readLineSync()!);
    
    //incrementa os totais gerais e por curso e por sexo
    totalCandidatos++;
    if (sexo == 'M') {
      totalMasculino++;
    } else {
      totalFeminino++;
    }
    
    if (curso == 'CC') {
      if (pontuacao > 2500) {
        totalCienciaComp++;
        print("Código: $codigo, Nome: $nome, Pontuação: $pontuacao");
      }
    } else {
      totalSistInform++;
      if (sexo == 'M') {
        if (pontuacao < menorPontuacaoGeralMasculino) {
          menorPontuacaoGeralMasculino = pontuacao;
          codigoMaxPontuacaoSI = codigo;
          nomeMenorPontuacao = nome;
        }
        
        if (pontuacao > maiorPontuacaoSistInform) {
          maiorPontuacaoSistInform = pontuacao;
          codigoMaiorPontuacaoSistInform = codigo;
        }
      }
    }
  }
  
  //calcula os percentuais de candidatos por sexo
  double percMasculino = (totalMasculino / totalCandidatos) * 100;
  double percFeminino = (totalFeminino / totalCandidatos) * 100;
  
  print("\n");
  print("RESULTADOS:");
  print("Total de candidatos: $totalCandidatos");
  print("Total de candidatos do sexo masculino: $totalMasculino");
  print("Total de candidatos do sexo feminino: $totalFeminino");
  print("Total de candidatos para Ciência da Computação: $totalCienciaComp");
  print("Total de candidatos para Sistemas de Informação: $totalSistInform");
  print("Nome do candidato do sexo masculino com menor pontuação geral: $nomeMenorPontuacao, Pontuação: $menorPontuacaoGeralMasculino, Código: $codigoMaxPontuacaoSI");
  print('Código do candidato masculino com maior pontuação em SI: $codigoMaxPontuacaoSI');
  print('Percentual geral de candidatos masculinos: ${percMasculino.toStringAsFixed(2)}%');
  print('Percentual geral de candidatos femininos: ${percFeminino.toStringAsFixed(2)}%');
}
