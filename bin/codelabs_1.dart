import 'package:codelabs_1/codelabs_1.dart' as codelabs_1;
import 'classFabrica.dart';
import 'dart:math';

/** Class Bicycle **/
class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;

  Bicycle(this.cadence, this.gear);

  @override
  String toString() => 'Bicycle: $_speed mph';

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

/** Class Rectagle **/
class Rectagle {
  int width;
  int height;
  Point origin;

  Rectagle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

/** Programacion funcionl**/
String sream(int length) => 'A' * length;
void main(List<String> arguments) {
  /** Class Bicycle **/
  var bike = Bicycle(9, 2);
  print(bike);

  /** Class Rectagule**/
  Rectagle rectalgule1 =
      Rectagle(origin: const Point(10, 20), width: 100, height: 200);
  Rectagle rectalgule2 = Rectagle(origin: const Point(10, 10));
  Rectagle rectalgule3 = Rectagle(width: 200);
  var rectalgule4 = new Rectagle();

  print(rectalgule1);
  print(rectalgule2);
  print(rectalgule3);
  print(rectalgule4);

  /**Class Shape**/
  final circle = Circle(2);
  final square = Square(2);
  print('');
  print(square.area);

  final circle2 = shapeFactory('circle');
  print('Funcion de nivel superior: ${circle2.area}');

  /** Programacion funcional**/
  final values = [1, 2, 3, 5, 10, 50];
  values.skip(3).take(3).forEach(print);
}
