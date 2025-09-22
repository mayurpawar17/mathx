import 'dart:math';

import 'package:intl/intl.dart';

class MathShape {
  static final _formatter = NumberFormat('#.####');

  //DOUBLE TYPE OUTPUT
  //Square, Rectangle, and Parallelogram :
  double areaSquareValue(double length) {
    return length * length;
  }

  double areaRectangleValue(double length, double width) {
    return length * width;
  }

  double areaParallelogramValue(double base, double height) {
    return base * height;
  }

  //Triangle, Trapezoid , and Rhombus:

  double areaTriangleValue(double base, double height) {
    return 1 / 2 * base * height;
  }

  double areaTrapezoidValue(
    double parallelSide1,
    double parallelSide2,
    double height,
  ) {
    return 1 / 2 * (parallelSide1 + parallelSide2) * height;
  }

  double areaRhombusValue(double diagonalSide1, double diagonalSide2) {
    return 1 / 2 * diagonalSide1 * diagonalSide2;
  }

  //Circle and Ellipse :

  double areaCircleValue(double radius) {
    return pi * (radius * radius);
  }

  double areaEllipseValue(double semiMajorAxis, double semiMinorAxis) {
    return pi * semiMajorAxis * semiMinorAxis;
  }

  //STRING FORMAT OUTPUT

  //Square, Rectangle, and Parallelogram:
  String areaSquare(double length) {
    return _formatter.format(areaSquareValue(length));
  }

  String areaRectangle(double length, double width) {
    return _formatter.format(areaRectangleValue(length, width));
  }

  String areaParallelogram(double base, double height) {
    return _formatter.format(areaParallelogramValue(base, height));
  }

  //Triangle, Trapezoid , and Rhombus:
  String areaTriangle(double base, double height) {
    return _formatter.format(areaTriangleValue(base, height));
  }

  String areaTrapezoid(
    double parallelSide1,
    double parallelSide2,
    double height,
  ) {
    return _formatter.format(
      areaTrapezoidValue(parallelSide1, parallelSide2, height),
    );
  }

  String areaRhombus(double diagonalSide1, double diagonalSide2) {
    return _formatter.format(areaRhombusValue(diagonalSide1, diagonalSide2));
  }

  //Circle and Ellipse:
  String areaCircle(double radius) {
    return _formatter.format(areaCircleValue(radius));
  }

  // String areaEllipse(double semiMajorAxis, double semiMinorAxis) {
  //   return _formatter.format(areaEllipse(semiMajorAxis, semiMinorAxis));
  // }

  String areaEllipse(double semiMajorAxis, double semiMinorAxis) {
    return _formatter.format(pi * semiMajorAxis * semiMinorAxis);
  }
}
