void main() {
  final List<double> temperaturas = [
    0.0,
    4.2,
    15.0,
    18.1,
    21.7,
    32.0,
    40.0,
    41.0,
  ];

  for (final temp in temperaturas) {
    final fahr = celsiusParaFahr(temp).toStringAsFixed(2);
    final kelvin = celsiusParaKelvin(temp).toStringAsFixed(2);

    print("Celsius: $temp, fahrenheit: $fahr, kelvin: $kelvin");
  }
}

double celsiusParaFahr(double temperatura) {
  return (temperatura * 9 / 5) + 32;
}

double celsiusParaKelvin(double temperatura) {
  return temperatura + 273.15;
}
