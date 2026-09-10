class Cliente {
  String nome;
  int cpf;

  Cliente({
    required this.nome,
    required this.cpf,
  });

  @override
  String toString() {
    return 'Nome: $nome | CPF: $cpf';
  }
}
