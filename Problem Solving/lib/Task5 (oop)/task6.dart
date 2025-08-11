main() {
  Temperature temperature = Temperature(25);
  print("Celsius: ${temperature.celsius}");
  print("Fahrenheit: ${temperature.fahrenheit}");
  temperature.celsius = 30;
  print("Updated Celsius: ${temperature.celsius}");
  print("Updated Fahrenheit: ${temperature.fahrenheit}");
}

class Temperature {
  double _celsius;
  Temperature(this._celsius);

  void set celsius(double celsius) {
    if (celsius >= -273) {
      _celsius = celsius;
    } else {
      print("Temperature can't be less than -273");
    }
  }

  double get celsius => _celsius;
  double get fahrenheit => (_celsius * (9 / 5) + 32);
}
