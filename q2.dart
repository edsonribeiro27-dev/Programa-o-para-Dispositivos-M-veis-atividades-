int soma(List<int> numeros) {
  int total = 0;

  for (int numero in numeros) {
    total += numero;
  }

  return total;
}

double media(List<int> numeros) {
  return soma(numeros) / numeros.length;
}

void main() {
  print(media([10, 20, 30]));
}
