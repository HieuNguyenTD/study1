import 'dart:math';

abstract class Shape{
  factory Shape(String type){
    if(type == 'circle') return Circle(2);
    else if(type == 'square') return Square(2);
    throw 'Can\'t create $type';
  }

  num get area;
}

class Circle implements Shape{
  final num radius;

  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape{
  final num side;

  Square(this.side);
  num get area => pow(side, 2);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

class CircleMock implements Circle {
  num area = 0;
  num radius = 0;

}

main(){
  try {
    final circle = Circle(2);
    final square = Square(2);
    print(circle.area);
    print(square.area);

    final circle2 = shapeFactory('circle');
    final square2 = shapeFactory('square');
    print(circle2.area);
    print(square2.area);

    final circle3 = Shape('circle');
    final square3= Shape('square');
    print(circle3.area);
    print(square3.area);
  }catch(err){
    print(err);
  }
}