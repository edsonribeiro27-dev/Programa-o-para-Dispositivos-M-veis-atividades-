import 'empregado.dart';

class Operario extends Empregado {
  double _valorProducao;
  double _comissao;

  Operario()
      : _valorProducao = 0,
        _comissao = 0,
        super();

  Operario.completo(
    String nome,
    String endereco,
    String telefone,
    int codigoSetor,
    double salarioBase,
    double imposto,
    this._valorProducao,
    this._comissao,
  ) : super.completo(
          nome,
          endereco,
          telefone,
          codigoSetor,
          salarioBase,
          imposto,
        );

  double get valorProducao => _valorProducao;
  double get comissao => _comissao;

  set valorProducao(double valor) {
    _valorProducao = valor;
  }

  set comissao(double valor) {
    _comissao = valor;
  }

  @override
  double calcularSalario() {
    double salario = super.calcularSalario();
    double valorComissao = _valorProducao * _comissao / 100;

    return salario + valorComissao;
  }
}
