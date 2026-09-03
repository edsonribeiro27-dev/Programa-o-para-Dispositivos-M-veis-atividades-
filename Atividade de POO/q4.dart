import 'empregado.dart';

class Administrador extends Empregado {
  double _ajudaDeCusto;

  Administrador()
      : _ajudaDeCusto = 0,
        super();

  Administrador.completo(
    String nome,
    String endereco,
    String telefone,
    int codigoSetor,
    double salarioBase,
    double imposto,
    this._ajudaDeCusto,
  ) : super.completo(
          nome,
          endereco,
          telefone,
          codigoSetor,
          salarioBase,
          imposto,
        );

  double get ajudaDeCusto => _ajudaDeCusto;

  set ajudaDeCusto(double valor) {
    _ajudaDeCusto = valor;
  }

  @override
  double calcularSalario() {
    return super.calcularSalario() + _ajudaDeCusto;
  }
}
