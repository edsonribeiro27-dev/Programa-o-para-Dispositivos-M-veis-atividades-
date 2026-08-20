import 'dart:io';

void main() {
  print('Fale com Bob: ');
  String mensagem = stdin.readLineSync()!;

  if (mensagem.isEmpty) {
    print('Tudo bem. Seja desse jeito!');
  } else if (mensagem.endsWith('?') && mensagem == mensagem.toUpperCase()) {
    print('Calma, eu sei o que estou fazendo!');
  } else if (mensagem == mensagem.toUpperCase()) {
    print('Uau, relaxe!');
  } else if (mensagem.endsWith('?')) {
    print('Ok.');
  } else {
    print('Tanto faz.');
  }
}
