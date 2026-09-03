veterinario.dart
  import 'animal.dart';

class Veterinario {
  void examinar(Animal animal) {
    print('Examinando ${animal.nome}...');
    animal.emitirSom();
  }
}

import 'animal.dart';
import 'cachorro.dart';
import 'cavalo.dart';
import 'preguica.dart';
import 'veterinario.dart';

void main() {
  Veterinario veterinario = Veterinario();

  Animal cachorro = Cachorro('Rex', 5);
  Animal cavalo = Cavalo('Spirit', 7);
  Animal preguica = Preguica('Lenta', 3);

  veterinario.examinar(cachorro);
  veterinario.examinar(cavalo);
  veterinario.examinar(preguica);
}
