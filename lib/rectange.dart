import 'dart:math';

class Rectangle{
  int width;
  int height;
  Point origin;
  late String a = '';
  String b = '';

  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Rectangle &&
          runtimeType == other.runtimeType &&
          a == other.a &&
          b == other.b;


}

void main(){
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());
}