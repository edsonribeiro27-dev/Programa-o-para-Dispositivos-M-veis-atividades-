void main() {
  int idadeDias = 400;

  int anos = idadeDias ~/ 365;
  int resto = idadeDias % 365;

  int meses = resto ~/ 30;
  int dias = resto % 30;

  print('$anos ano(s)');
  print('$meses mes(es)');
  print('$dias dia(s)');
}
