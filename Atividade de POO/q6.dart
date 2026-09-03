import 'empregado.dart';

class Vendedor extends Empregado {
  double _valorVendas;
  double _comissao;

  Vendedor()
      : _valorVendas = 0,
        _comissao = 0,
        super();

  Vendedor.completo(
    String nome,
    String endereco,
    String telefone,
    int codigoSetor,
    double salarioBase,
    double imposto,
    this._valorVendas,
    this._comissao,
  ) : super.completo(
          nome,
          endereco,
          telefone,
          codigoSetor,
          salarioBase,
          imposto,
        );

  double get valorVendas => _valorVendas;
  double get comissao => _comissao;

  set valorVendas(double valor) {
    _valorVendas = valor;
  }

  set comissao(double valor) {
    _comissao = valor;
  }

  @override
  double calcularSalario() {
    double salario = super.calcularSalario();
    double valorComissao = _valorVendas * _comissao / 100;

    return salario + valorComissao;
  }
}
