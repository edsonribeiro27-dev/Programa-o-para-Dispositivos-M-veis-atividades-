//animal
class Animal {
  String nome;
  int idade;

  Animal(this.nome, this.idade);

  void emitirSom() {
    print('Som do animal');
  }
}

//cachorro
import 'animal.dart';

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print('$nome: Au Au!');
  }

  void correr() {
    print('$nome está correndo.');
  }
}

//cavalo
import 'animal.dart';

class Cavalo extends Animal {
  Cavalo(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print('$nome: Relincho!');
  }

  void correr() {
    print('$nome está correndo.');
  }
}

//preguica
import 'animal.dart';

class Preguica extends Animal {
  Preguica(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print('$nome: Som da preguiça!');
  }

  void subirEmArvores() {
    print('$nome está subindo em árvores.');
  }
}
