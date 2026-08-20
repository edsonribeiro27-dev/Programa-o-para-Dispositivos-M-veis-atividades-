import 'dart:io';

void main() {
  print('Digite seu nome: ');
  String nome = stdin.readLineSync()!;

  print('Digite sua idade: ');
  int idade = int.parse(stdin.readLineSync()!);

  int anoAtual = DateTime.now().year;
  int anoNascimento = anoAtual - idade;

  print('Olá $nome, você tem $idade anos.');
  print('Você nasceu em $anoNascimento.');

  for (int ano = anoNascimento; ano <= anoAtual; ano++) {
    int idadeNoAno = ano - anoNascimento;

    if (idadeNoAno == 0) {
      print('No ano de $ano você nasceu!');
    } else if (ano == anoAtual) {
      print('No ano de $ano você tem $idadeNoAno anos.');
    } else {
      print('No ano de $ano você tinha $idadeNoAno anos.');
    }
  }

  int anosPara100 = 100 - idade;

  print('Faltam $anosPara100 anos para você completar 100 anos.');
}
