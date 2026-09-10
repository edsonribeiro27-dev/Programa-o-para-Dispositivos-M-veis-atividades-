import 'cliente.dart';
import 'produto.dart';
import 'venda_item.dart';
import 'venda.dart';

void main() {
  // Criando um cliente
  Cliente cliente = Cliente(
    nome: 'João',
    cpf: 123456789,
  );

  // Criando produtos
  Produto produto1 = Produto(
    codigo: 1,
    nome: 'Celular',
    preco: 1500.00,
    desconto: 10,
  );

  Produto produto2 = Produto(
    codigo: 2,
    nome: 'Fone de Ouvido',
    preco: 200.00,
    desconto: 5,
  );

  // Criando os itens da venda
  VendaItem item1 = VendaItem(
    produto: produto1,
    quantidade: 1,
  );

  VendaItem item2 = VendaItem(
    produto: produto2,
    quantidade: 2,
  );

  // Criando a venda
  Venda venda = Venda(
    cliente: cliente,
    itens: [item1, item2],
  );

  // Exibindo o resultado
  print(venda);
}
