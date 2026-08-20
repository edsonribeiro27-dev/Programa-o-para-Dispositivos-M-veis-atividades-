List<int> maximo_minimo(List<int> numeros) {
  int maior = numeros[0];
  int menor = numeros[0];

  for (int numero in numeros) {
    if (numero > maior) {
      maior = numero;
    }

    if (numero < menor) {
      menor = numero;
    }
  }

  return [maior, menor];
}

void main() {
  print(maximo_minimo([4, 7, 2, 8, 10, 3]));
}
