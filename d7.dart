void main() {
  final numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

  print("for: ${somaFor(numeros)}");
  print("while: ${somaWhile(numeros)}");
  print("recursão: ${somaRecursiva(numeros, 0)}");
  print("lista: ${somaLista(numeros)}");
}

// FOR
int somaFor(List<int> numeros) {
  var soma = 0;

  for (final numero in numeros) {
    soma += numero;
  }

  return soma;
}

// WHILE
int somaWhile(List<int> numeros) {
  var soma = 0;
  var indice = 0;

  while (indice < numeros.length) {
    soma += numeros[indice];
    indice++;
  }

  return soma;
}

// RECURSÃO
int somaRecursiva(List<int> numeros, int indice) {
  if (indice == numeros.length) {
    return 0;
  }

  return numeros[indice] + somaRecursiva(numeros, indice + 1);
}

// MÉTODO DE COLEÇÃO
int somaLista(List<int> numeros) {
  return numeros.fold(0, (acumulador, numero) => acumulador + numero);
}
