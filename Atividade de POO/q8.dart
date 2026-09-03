import 'animal.dart';
import 'cachorro.dart';
import 'cavalo.dart';
import 'preguica.dart';

void main() {
  Animal cachorro = Cachorro('Rex', 5);
  Animal cavalo = Cavalo('Spirit', 7);
  Animal preguica = Preguica('Lenta', 3);

  cachorro.emitirSom();
  cavalo.emitirSom();
  preguica.emitirSom();
}
