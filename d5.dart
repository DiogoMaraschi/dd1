import 'dart:math';

void main() {
  final List<String> nomes = [
    "Ana",
    "Francisco",
    "Joao",
    "Pedro",
    "Gabriel",
    "Rafaela",
    "Marcio",
    "Jose",
    "Carlos",
    "Patricia",
    "Helena",
    "Camila",
    "Mateus",
    "Gabriel",
    "Maria",
    "Samuel",
    "Karina",
    "Antonio",
    "Daniel",
    "Joel",
    "Cristiana",
    "Sebastião",
    "Paula",
  ];

  final List<String> sobrenomes = [
    "Silva",
    "Ferreira",
    "Almeida",
    "Azevedo",
    "Braga",
    "Barros",
    "Campos",
    "Cardoso",
    "Teixeira",
    "Costa",
    "Santos",
    "Rodrigues",
    "Souza",
    "Alves",
    "Pereira",
    "Lima",
    "Gomes",
    "Ribeiro",
    "Carvalho",
    "Lopes",
    "Barbosa",
  ];

  final random = Random();

  final nomeRandom = nomes[random.nextInt(nomes.length)];
  final sobrenomeRandom = sobrenomes[random.nextInt(sobrenomes.length)];

  print("Nome: $nomeRandom $sobrenomeRandom");
}
