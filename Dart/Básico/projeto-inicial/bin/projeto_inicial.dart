import 'package:projeto_inicial/projeto_inicial.dart' as projeto_inicial;

//Criando e manipulando variáveis e listas.

void main(List<String> arguments) {
  int idade = 19;
  double altura = 1.85;
  bool geek = true;
  const String nome = 'Lucas Alex';
  // const torna o objeto constante, ou seja, não é mais possível altera-lo.
  bool maiorDeIdade;
  int energia = 100;

  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  for (int i = 1; i <= 5; i++) {
    print('Conclui $i voltas');
  }

  while (energia > 0) {
    print('Mais uma repetição');
    energia = energia - 20;
  }

  do {
    // Só repetirá uma vez pois não há mais energia
    print('Mais uma vez');
    energia = energia - 20;
  } while (energia > 0);

  print('O meu nome é $nome !');

  List<dynamic> alex = [idade, altura, geek, nome];

  List<String> listafrutas = ['Abacate', 'Cereja', 'Amora', 'Acerola'];

  //print(listafrutas);

  //print(alex[0]);

  String frase = 'Eu sou ${alex[3]} \n'
      'Hoje tenho ${alex[0]} anos. Sou maior de idade? $maiorDeIdade \n'
      'Minha altura é ${alex[1]} \n'
      'Eu me considero como geek? ${alex[2]}';

  print(frase);

  print('Em 2022 eu tenho $idade anos de idade. \n'
      'Em 2023 eu terei ${idade + 1} anos de idade.');
}
