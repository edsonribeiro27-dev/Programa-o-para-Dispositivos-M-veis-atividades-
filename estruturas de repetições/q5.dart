void main() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  List<int> pares = [];

  for (int numero in a) {
    if (numero % 2 == 0) {
      pares.add(numero);
    }
  }

  print(pares);
}
