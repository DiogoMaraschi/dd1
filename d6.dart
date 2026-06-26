void main() {
  final List<int> numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];

  numeros.sort();

  for (final numero in numeros) {
    print(converteNumero(numero));
  }
}

String converteNumero(int numero) {
  final binario = numero.toRadixString(2);
  final octal = numero.toRadixString(8);
  final hexa = numero.toRadixString(16);

  return "decimal: $numero, binário: $binario, octal: $octal, hexadecimal: $hexa";
}
