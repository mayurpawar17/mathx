import 'dart:math';
import '../core/math_validation.dart';

/// A utility class containing pure mathematical logic for 2D shapes.
/// These methods return raw [double] values.
class TwoDLogic {
  /// Calculates the area of a square: side * side.
  static double areaSquare(double length) {
    MathValidation.checkNegative(length, 'length');
    return length * length;
  }

  /// Calculates the area of a rectangle: length * width.
  static double areaRectangle(double l, double w) {
    MathValidation.checkMultipleNegative({'length': l, 'width': w});
    return l * w;
  }

  /// Calculates the area of a triangle: 0.5 * base * height.
  static double areaTriangle(double b, double h) {
    MathValidation.checkMultipleNegative({'base': b, 'height': h});
    return 0.5 * b * h;
  }

  /// Calculates the area of a triangle using three sides (Heron's Formula).
  /// Validates inputs using the Triangle Inequality Theorem.
  static double areaTriangleSides(double a, double b, double c) {
    MathValidation.checkTriangleSides(a, b, c);
    double s = (a + b + c) / 2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
  }

  /// Calculates the area of a circle: π * radius².
  static double areaCircle(double r) {
    MathValidation.checkNegative(r, 'radius');
    return pi * r * r;
  }

  /// Calculates the area of a parallelogram: base * height.
  static double areaParallelogram(double b, double h) {
    MathValidation.checkMultipleNegative({'base': b, 'height': h});
    return b * h;
  }

  /// Calculates the area of a trapezoid: 0.5 * (base1 + base2) * height.
  static double areaTrapezoid(double b1, double b2, double h) {
    MathValidation.checkMultipleNegative({'base1': b1, 'base2': b2, 'height': h});
    return 0.5 * (b1 + b2) * h;
  }

  /// Calculates the area of a rhombus: 0.5 * diagonal1 * diagonal2.
  static double areaRhombus(double d1, double d2) {
    MathValidation.checkMultipleNegative({'diagonal1': d1, 'diagonal2': d2});
    return 0.5 * d1 * d2;
  }

  /// Calculates the area of an ellipse: π * semi-major axis * semi-minor axis.
  static double areaEllipse(double a, double b) {
    MathValidation.checkMultipleNegative({'semiMajorAxis': a, 'semiMinorAxis': b});
    return pi * a * b;
  }
}
