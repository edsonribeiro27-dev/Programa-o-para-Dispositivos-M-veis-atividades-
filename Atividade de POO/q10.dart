import 'pessoa.dart';
import 'fornecedor.dart';
import 'empregado.dart';
import 'administrador.dart';
import 'operario.dart';
import 'vendedor.dart';

import 'animal.dart';
import 'cachorro.dart';
import 'cavalo.dart';
import 'preguica.dart';
import 'veterinario.dart';

void main() {

  Fornecedor fornecedor = Fornecedor.completo(
    'Empresa ABC',
    'Rua A',
    '99999-9999',
    5000,
    1500,
  );

  print('Fornecedor: ${fornecedor.nome}');
  print('Saldo: R\$ ${fornecedor.obterSaldo()}');

  Empregado empregado = Empregado.completo(
    'João',
    'Rua B',
    '98888-8888',
    1,
    3000,
    10,
  );

  print('\nEmpregado: ${empregado.nome}');
  print('Salário: R\$ ${empregado.calcularSalario()}');

  Administrador administrador = Administrador.completo(
    'Maria',
    'Rua C',
    '97777-7777',
    2,
    5000,
    10,
    1000,
  );

  print('\nAdministrador: ${administrador.nome}');
  print('Salário: R\$ ${administrador.calcularSalario()}');

  Operario operario = Operario.completo(
    'Carlos',
    'Rua D',
    '96666-6666',
    3,
    2500,
    10,
    10000,
    5,
  );

  print('\nOperário: ${operario.nome}');
  print('Salário: R\$ ${operario.calcularSalario()}');

  Vendedor vendedor = Vendedor.completo(
    'Pedro',
    'Rua E',
    '95555-5555',
    4,
    3000,
    10,
    20000,
    5,
  );

  print('\nVendedor: ${vendedor.nome}');
  print('Salário: R\$ ${vendedor.calcularSalario()}');

  Animal cachorro = Cachorro('Rex', 5);
  Animal cavalo = Cavalo('Spirit', 7);
  Animal preguica = Preguica('Lenta', 3);

  print('\n--- Animais ---');

  cachorro.emitirSom();
  cavalo.emitirSom();
  preguica.emitirSom();

  Veterinario veterinario = Veterinario();

  print('\n--- Veterinário ---');

  veterinario.examinar(cachorro);
  veterinario.examinar(cavalo);
  veterinario.examinar(preguica);

  List<Animal> jaulas = [
    Cachorro('Rex', 5),
    Cavalo('Spirit', 7),
    Preguica('Lenta', 3),
    Cachorro('Bolt', 4),
    Cavalo('Trovão', 6),
    Preguica('Preguiçosa', 2),
    Cachorro('Bob', 8),
    Cavalo('Relâmpago', 5),
    Preguica('Sonolenta', 4),
    Cachorro('Max', 3),
  ];

  print('\n--- ZOOLÓGICO ---');

  for (Animal animal in jaulas) {
    print('\nAnimal: ${animal.nome}');
    
    animal.emitirSom();

    if (animal is Cachorro) {
      animal.correr();
    } else if (animal is Cavalo) {
      animal.correr();
    } else if (animal is Preguica) {
      animal.subirEmArvores();
    }
  }
}
