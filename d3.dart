// Texto do parágrafo;
// Numero de palavras;
// Tamanho do texto;
// Numero de frases;
// Numero total de vogais;
// Consoantes presentes no texto;

void main() {
  final String texto =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.";

  final palavras = contaPalavras(texto);
  final tamTexto = tamanhoTexto(texto);
  final frases = contaFrases(texto);
  final vogais = contaVogais(texto);
  final consoantes = contaConsoantes(texto);

  print("Parágrafo: $texto");
  print("Número de palavras: $palavras");
  print("Tamanho do texto: $tamTexto");
  print("Número de frases: $frases");
  print("Número de vogais: $vogais");
  print("Consoantes encontradas: ${consoantes.join(', ')}");
}

int contaPalavras(String texto) {
  return texto.split(" ").length;
}

int tamanhoTexto(String texto) {
  return texto.length;
}

int contaFrases(String texto) {
  //Conta apenas frases que não estejam vazias
  return texto.split(".").where((frase) => frase.trim().isNotEmpty).length;
}

int contaVogais(String texto) {
  texto = texto.toLowerCase();

  int contador = 0;

  for (var letra in texto.split("")) {
    if ('aeiou'.contains(letra)) {
      contador++;
    }
  }

  return contador;
}

Set<String> contaConsoantes(String texto) {
  texto = texto.toLowerCase();

  final consoantes = <String>{};

  for (var letra in texto.split("")) {
    if ('bcdfghjklmnpqrstvxwyz'.contains(letra)) {
      consoantes.add(letra);
    }
  }

  return consoantes;
}
