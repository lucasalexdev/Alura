void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String corFruta = "verde e Amearela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  Fruta fruta1 =
      Fruta("Abacaxi", 850.32, "Amarelo e verde", "Doce e ácido", 22);
  Fruta fruta2 = Fruta(nome, peso, corFruta, sabor, diasDesdeColheita);

  print(fruta1.nome);
  print(fruta2.nome);

  Legumes mandioca = Legumes("Mandioca", 1200, "marrom", true);
  Fruta banana = Fruta("Banana", 75, "Amarela", "Doce", 15);
  Fruta laranja =
      Fruta("Laranja", 105.2, "Verde e amarela", "doce e cítrica", 22);
  Nozes macadamia = Nozes("Macadãmia", 2, "Branco amarelado", "Doce", 20, 35);
  Citricas limao = Citricas("Limão", 100, "verde", "Azedo", 5, 9);

  mandioca.printAlimento();
  banana.printAlimento();
  macadamia.printAlimento();
  limao.printAlimento();

  mandioca.cozinhar();
  limao.existeRefri(true);
  banana.estaMadura(10);

  //Fazer um bolo de laranja

  laranja.separarIngredientes();
  laranja.fazerMassa();
  laranja.assar();
  // Teste macadãmia
  macadamia.fazerMassa();
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela está madura? $isMadura.");
  }

  void fazerSuco() {
    print("Você fez um ótimo suco de $nome");
  }

  @override
  void separarIngredientes() {
    print("Colher $nome");
  }

  @override
  void fazerMassa() {
    print("Misturar ingredientes");
  }

  @override
  void assar() {
    print("Colocar massa do bolo de $nome no forno");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("este(a) $nome pesa $peso gramas e é $cor");
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o(a) $nome está cozinhando");
    } else {
      print("Não precisa cozinhar");
    }
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void assar() {
    // TODO: implement assar
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe Refrigerante de $nome");
    } else {
      print("Não existe refrigerante de $nome");
    }
  }
}

class Nozes extends Fruta {
  double porcentagemDeOleoNatural;

  Nozes(
    String nome,
    double peso,
    String cor,
    String sabor,
    int diasDesdeColheita,
    this.porcentagemDeOleoNatural,
  ) : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print("Tirar a casca da(o) $nome");
    super.fazerMassa();
  }
}

abstract class Bolo {
  // Classe abstrata

  void separarIngredientes();

  void fazerMassa();

  void assar();
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

mostrarMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }
  if (cor != null) {
    print("A $nome é $cor");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
