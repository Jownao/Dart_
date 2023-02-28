import 'dart:io';

void main() {
  String matricula = '';
  String nome = '';
  String sexo = '';
  double nota1 = 0;
  double nota2 = 0;
  double nota3 = 0;
  int faltas = 0;
  int totalAlunos = 0;
  int aprovados = 0;
  double somaNotas = 0;
  double mediaTurma = 0;
  double maiorMediaMasc = 0;
  double maiorMediaFem = 0;
  String matriculaMasc = '';
  String matriculaFem = '';
  double mediaFem = 0;
  
  while (matricula != '00000') {
    stdout.write('Digite a matrícula do aluno: ');
    matricula = stdin.readLineSync()!;
    if (matricula == '00000') {
      break;
    }
    stdout.write('Digite o nome do aluno: ');
    nome = stdin.readLineSync()!;
    stdout.write('Digite o sexo do aluno (M ou F): ');
    sexo = stdin.readLineSync()!;
    stdout.write('Digite a primeira nota do aluno: ');
    nota1 = double.parse(stdin.readLineSync()!);
    stdout.write('Digite a segunda nota do aluno: ');
    nota2 = double.parse(stdin.readLineSync()!);
    stdout.write('Digite a terceira nota do aluno: ');
    nota3 = double.parse(stdin.readLineSync()!);
    stdout.write('Digite o número de faltas do aluno: ');
    faltas = int.parse(stdin.readLineSync()!);
    
    totalAlunos++;
    somaNotas += nota1 + nota2 + nota3;
    double mediaAluno = (nota1 + nota2 + nota3) / 3;
    
    if (mediaAluno >= 7 && faltas <= 18) {
      aprovados++;
      if (sexo == 'M' && mediaAluno > maiorMediaMasc) {
        maiorMediaMasc = mediaAluno;
        matriculaMasc = matricula;
      } else if (sexo == 'F' && mediaAluno > maiorMediaFem) {
        maiorMediaFem = mediaAluno;
        matriculaFem = matricula;
      }
    }
    
    if (sexo == 'F') {
      mediaFem += mediaAluno;
    }
  }
  
  if (totalAlunos > 0) {
    mediaTurma = somaNotas / (totalAlunos * 3);
    mediaFem /= (totalAlunos - aprovados);
    double percAprovados = (aprovados / totalAlunos) * 100;
    
    print('Média da turma: $mediaTurma');
    print('Percentual de alunos aprovados: $percAprovados%');
    if (matriculaMasc != '') {
      print('Matrícula do aluno do sexo masculino com maior média: $matriculaMasc');
    } else {
      print('Não há alunos do sexo masculino aprovados');
    }
    if (matriculaFem != '') {
      print('Matrícula da aluna do sexo feminino com maior média: $matriculaFem');
    } else {
      print('Não há alunas do sexo feminino aprovadas');
    }
    print('Média das alunas do sexo feminino: $mediaFem');
  } else {
    print('Não foram digitados dados de alunos.');
  }
}
