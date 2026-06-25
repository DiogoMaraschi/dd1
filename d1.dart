import 'dart:math';

void main() {
  final List<double> raios = [5, 8, 12, 7.3, 18, 2, 25];

  for (var raio in raios) {
    final area = calculaArea(raio).toStringAsFixed(2);
    final perimetro = calculaPerimetro(raio).toStringAsFixed(2);

    print("Raio: $raio, area: $area, perímetro: $perimetro");
  }
}

double calculaArea(double raio) {
  return pi * raio * raio;
}

double calculaPerimetro(double raio) {
  return 2 * pi * raio;
}
