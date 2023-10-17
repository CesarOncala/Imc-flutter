import 'package:test/test.dart';
import 'main.dart';

void main() {
  group('Testes para cálculo de IMC', () {
    test('Teste 1 - IMC normal', () {
      final pessoa = Pessoa('João', 70, 1.75);
      expect(pessoa.calcularIMC(), closeTo(22.857, 0.001));
    });

    test('Teste 2 - IMC normal', () {
      final pessoa = Pessoa('Maria', 50, 1.60);
      expect(pessoa.calcularIMC(), closeTo(19.531, 0.001));
    });

    test('Teste com entrada inválida', () {
     
      final pessoa = Pessoa('Invalida', 0, 0);

      expect(pessoa.calcularIMC().isNaN, isTrue);
    });
  });
}
