import 'cliente.dart';
import 'venda_item.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({
    required this.cliente,
    this.itens = const [],
  });

  double get valorTotal {
    double total = 0;

    for (var item in itens) {
      total += item.preco * item.quantidade;
    }

    return total;
  }

  @override
  String toString() {
    String resumo = '--- RESUMO DA VENDA ---\n';
    resumo += 'Cliente: ${cliente.nome}\n';
    resumo += 'CPF: ${cliente.cpf}\n';
    resumo += '\nItens:\n';

    for (var item in itens) {
      resumo += '${item.produto.nome} - '
          '${item.quantidade}x - '
          'R\$ ${item.preco.toStringAsFixed(2)}\n';
    }

    resumo += '\nValor total: R\$ ${valorTotal.toStringAsFixed(2)}';

    return resumo;
  }
}
