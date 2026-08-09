import 'dart:math';

/// A utility class containing pure mathematical logic for 2D shapes.
/// These methods return raw [double] values.
class TwoDLogic {
  /// Calculates the area of a square: side * side.
  static double areaSquare(double length) => length * length;

  /// Calculates the area of a rectangle: length * width.
  static double areaRectangle(double l, double w) => l * w;

  /// Calculates the area of a triangle: 0.5 * base * height.
  static double areaTriangle(double b, double h) => 0.5 * b * h;

  /// Calculates the area of a circle: π * radius².
  static double areaCircle(double r) => pi * r * r;

  /// Calculates the area of a parallelogram: base * height.
  static double areaParallelogram(double b, double h) => b * h;

  /// Calculates the area of a trapezoid: 0.5 * (base1 + base2) * height.
  static double areaTrapezoid(double b1, double b2, double h) => 0.5 * (b1 + b2) * h;

  /// Calculates the area of a rhombus: 0.5 * diagonal1 * diagonal2.
  static double areaRhombus(double d1, double d2) => 0.5 * d1 * d2;

  /// Calculates the area of an ellipse: π * semi-major axis * semi-minor axis.
  static double areaEllipse(double a, double b) => pi * a * b;
}
