void main() {
  final dataAtual = DateTime(2022, 9, 5);

  var data = dataAtual;
  var contador = 0;

  while (contador < 18) {
    data = data.add(Duration(days: 1));

    if (data.weekday != 6 && data.weekday != 7) {
      contador++;
    }
  }

  print('Data atual: ${dataAtual.day}/${dataAtual.month}/${dataAtual.year}');

  print('Data calculada: ${data.day}/${data.month}/${data.year}');
}
