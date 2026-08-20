double idadeNoPlaneta(int segundos, String planeta) {
  double anoTerrestre = 31557600;

  Map<String, double> planetas = {
    'Mercurio': 0.2408467,
    'Venus': 0.61519726,
    'Terra': 1.0,
    'Marte': 1.8808158,
    'Jupiter': 11.862615,
    'Saturno': 29.447498,
    'Urano': 84.016846,
    'Netuno': 164.79132,
  };
  return segundos / anoTerrestre / planetas[planeta]!;
}
void main() {
  print(idadeNoPlaneta(1000000000, 'Terra'));
  print(idadeNoPlaneta(1000000000, 'Mercurio'));
}
