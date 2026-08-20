int multiplicar(int a, int b) {
  return a * b;
}

void main() {
  var operacao = multiplicar;

  print(operacao(3, 4));
}
