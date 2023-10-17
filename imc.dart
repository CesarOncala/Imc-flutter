import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    return peso / (altura * altura);
  }
}


Pessoa getPessoaData(){
   stdout.write("Digite o nome da pessoa: ");
    String nome = stdin.readLineSync();

    stdout.write("Digite o peso da pessoa (em kg): ");
    double peso = double.parse(stdin.readLineSync());

    stdout.write("Digite a altura da pessoa (em metros): ");
    double altura = double.parse(stdin.readLineSync());

    Pessoa pessoa = Pessoa(nome, peso, altura);

    return pessoa;
}


checkIMC(double imc, Pessoa pessoa){
 print("O IMC de ${pessoa.nome} é: $imc");

    if (imc < 18.5) {
      print("A pessoa está abaixo do peso.");
    } else if (imc < 24.9) {
      print("A pessoa está com peso normal.");
    } else if (imc < 29.9) {
      print("A pessoa está com sobrepeso.");
    } else if (imc < 34.9) {
      print("A pessoa está com obesidade grau I.");
    } else if (imc < 39.9) {
      print("A pessoa está com obesidade grau II.");
    } else {
      print("A pessoa está com obesidade grau III.");
    }
}

void main() {
  try {
    
    var pessoa = getPessoaData();

    double imc = pessoa.calcularIMC();

    checkIMC(imc,pessoa);

  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}