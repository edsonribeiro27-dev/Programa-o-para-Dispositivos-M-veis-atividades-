int pontosEnergia(int nivel, List<int> itens) {
  Set<int> numeros = {};

  for (int item in itens) {
    for (int i = item; i < nivel; i += item) {
      numeros.add(i);
    }
  }

  int soma = 0;

  for (int numero in numeros) {
    soma += numero;
  }

  return soma;
}

void main() {
  print(pontosEnergia(20, [3, 5]));
}
