class Produto {
  int codigo;
  String nome;
  double preco;
  double desconto;

  Produto({
    required this.codigo,
    required this.nome,
    required this.preco,
    this.desconto = 0,
  });

  double get precoComDesconto {
    return preco - (preco * desconto / 100);
  }

  @override
  String toString() {
    return '$nome - R\$ ${precoComDesconto.toStringAsFixed(2)}';
  }
}
