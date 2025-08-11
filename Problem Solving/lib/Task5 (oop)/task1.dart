void main() {
  Car myCar1 = Car(100);
  myCar1.speed = 50;
  print(myCar1.speed);
  Car myCar2 = Car(400);
  print(myCar2.speed);
}

class Car {
  double _speed;

  Car(this._speed);

  void set speed(double speed) {
    if (speed > 300 || speed < 0) {
      print("Invalid speed");
    } else {
      _speed = speed;
    }
  }

  double get speed => _speed;
}
