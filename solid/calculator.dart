import 'dart:math' as math;

/// Define calculator to determine area of [Rectangle] and [Circle] following SOLID principles
abstract class Shape {
  double calculateArea();
}

class Rectangle implements Shape {
  final double rectangleLength, rectangleWidth;
  const Rectangle({required this.rectangleLength, required this.rectangleWidth});

  @override
  double calculateArea() {
    return rectangleLength * rectangleWidth;
  }
}

class Circle implements Shape {
  final double circleRadius;
  const Circle({required this.circleRadius});

  @override
  double calculateArea() {
    return math.pi * circleRadius * circleRadius;
  }
}

void main() {
  Circle circle = Circle(circleRadius: 5);
  Rectangle rectangle = Rectangle(rectangleLength: 4, rectangleWidth: 5);
  printArea(circle);
  printArea(rectangle);
}

void printArea(Shape shape) {
  print(shape.calculateArea());
}
