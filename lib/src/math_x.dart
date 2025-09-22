import 'package:mathx/src/math_shape.dart';

class MathX {
  final _mathShape = MathShape();

  //DOUBLE TYPE OUTPUT
  double areaRectangleValue(double length, double width) =>
      _mathShape.areaRectangleValue(length, width);

  double areaTriangleValue(double base, double height) =>
      _mathShape.areaTriangleValue(base, height);

  double areaSquareValue(double length) => _mathShape.areaSquareValue(length);

  double areaCircleValue(double radius) => _mathShape.areaCircleValue(radius);

  double areaParallelogramValue(double base, double height) =>
      _mathShape.areaParallelogramValue(base, height);

  double areaTrapezoidValue(
    double parallelSide1,
    double parallelSide2,
    double height,
  ) => _mathShape.areaTrapezoidValue(parallelSide1, parallelSide2, height);

  double areaRhombusValue(double diagonalSide1, double diagonalSide2) =>
      _mathShape.areaRhombusValue(diagonalSide1, diagonalSide2);

  double areaEllipseValue(double semiMajorAxis, double semiMinorAxis) =>
      _mathShape.areaEllipseValue(semiMajorAxis, semiMinorAxis);

  //STRING FORMAT OUTPUT
  String areaRectangle(double length, double width) =>
      _mathShape.areaRectangle(length, width);

  String areaTriangle(double base, double height) =>
      _mathShape.areaTriangle(base, height);

  String areaSquare(double length) => _mathShape.areaSquare(length);

  String areaCircle(double radius) => _mathShape.areaCircle(radius);

  String areaParallelogram(double base, double height) =>
      _mathShape.areaParallelogram(base, height);

  String areaTrapezoid(
    double parallelSide1,
    double parallelSide2,
    double height,
  ) => _mathShape.areaTrapezoid(parallelSide1, parallelSide2, height);

  String areaRhombus(double diagonalSide1, double diagonalSide2) =>
      _mathShape.areaRhombus(diagonalSide1, diagonalSide2);

  String areaEllipse(double semiMajorAxis, double semiMinorAxis) =>
      _mathShape.areaEllipse(semiMajorAxis, semiMinorAxis);
}
