import 'core/math_formatter.dart';
import 'core/math_formulas.dart';
import 'core/math_explanation.dart';
import 'geometry/two_d_logic.dart';
import 'geometry/three_d_logic.dart';

/// The main entry point for the MathX library.
class MathX {
  final MathFormatter _formatter;

  MathX({MathFormatter? formatter})
      : _formatter = formatter ?? StandardMathFormatter();

  /// Returns the mathematical formula for a given [shape].
  ///
  /// Example: `getFormula('circle')` returns "π × r²"
  String getFormula(String shape) {
    switch (shape.toLowerCase()) {
      case 'square':
        return MathFormulas.areaSquare;
      case 'rectangle':
        return MathFormulas.areaRectangle;
      case 'triangle':
        return MathFormulas.areaTriangle;
      case 'circle':
        return MathFormulas.areaCircle;
      case 'parallelogram':
        return MathFormulas.areaParallelogram;
      case 'trapezoid':
        return MathFormulas.areaTrapezoid;
      case 'rhombus':
        return MathFormulas.areaRhombus;
      case 'ellipse':
        return MathFormulas.areaEllipse;
      case 'cube':
        return MathFormulas.volumeCube;
      case 'sphere':
        return MathFormulas.volumeSphere;
      case 'cylinder':
        return MathFormulas.volumeCylinder;
      case 'cone':
        return MathFormulas.volumeCone;
      default:
        return 'Formula not found';
    }
  }

  // ==========================================
  // EXPLANATIONS (Step-by-Step)
  // ==========================================

  /// Step-by-step explanation for circle area.
  String areaCircleExplanation(double radius) =>
      MathExplanation.areaCircle(radius, areaCircle(radius));

  /// Step-by-step explanation for square area.
  String areaSquareExplanation(double side) =>
      MathExplanation.areaSquare(side, areaSquare(side));

  /// Step-by-step explanation for rectangle area.
  String areaRectangleExplanation(double l, double w) =>
      MathExplanation.areaRectangle(l, w, areaRectangle(l, w));

  /// Step-by-step explanation for sphere volume.
  String volumeSphereExplanation(double radius) =>
      MathExplanation.volumeSphere(radius, volumeSphere(radius));

  /// Step-by-step explanation for cube volume.
  String volumeCubeExplanation(double side) =>
      MathExplanation.volumeCube(side, volumeCube(side));

  // ==========================================
  // 2D GEOMETRY - AREA (Returns double)
  // ==========================================

  /// Area of a square given its [side].
  double areaSquareValue(double side) => TwoDLogic.areaSquare(side);

  /// Area of a rectangle given [length] and [width].
  double areaRectangleValue(double length, double width) => TwoDLogic.areaRectangle(length, width);

  /// Area of a triangle given [base] and [height].
  double areaTriangleValue(double base, double height) => TwoDLogic.areaTriangle(base, height);

  /// Area of a triangle given three sides [a], [b], and [c].
  /// Uses Heron's formula and validates via Triangle Inequality Theorem.
  double areaTriangleSidesValue(double a, double b, double c) =>
      TwoDLogic.areaTriangleSides(a, b, c);

  /// Area of a circle given its [radius].
  double areaCircleValue(double radius) => TwoDLogic.areaCircle(radius);

  /// Area of a parallelogram given [base] and [height].
  double areaParallelogramValue(double base, double height) => TwoDLogic.areaParallelogram(base, height);

  /// Area of a trapezoid given [base1], [base2], and [height].
  double areaTrapezoidValue(double base1, double base2, double height) => TwoDLogic.areaTrapezoid(base1, base2, height);

  /// Area of a rhombus given two diagonals [d1] and [d2].
  double areaRhombusValue(double d1, double d2) => TwoDLogic.areaRhombus(d1, d2);

  /// Area of an ellipse given semi-axes [a] and [b].
  double areaEllipseValue(double a, double b) => TwoDLogic.areaEllipse(a, b);

  // ==========================================
  // 3D GEOMETRY - VOLUME (Returns double)
  // ==========================================

  /// Volume of a cube given its [side].
  double volumeCubeValue(double side) => ThreeDLogic.volumeCube(side);

  /// Volume of a rectangular prism given [length], [width], and [height].
  double volumeRectangularPrismValue(double length, double width, double height) => ThreeDLogic.volumeRectangularPrism(length, width, height);

  /// Volume of a cylinder given [radius] and [height].
  double volumeCylinderValue(double radius, double height) => ThreeDLogic.volumeCylinder(radius, height);

  /// Volume of a cone given [radius] and [height].
  double volumeConeValue(double radius, double height) => ThreeDLogic.volumeCone(radius, height);

  /// Volume of a sphere given its [radius].
  double volumeSphereValue(double radius) => ThreeDLogic.volumeSphere(radius);

  /// Volume of a square pyramid given base [side] and [height].
  double volumeSquarePyramidValue(double side, double height) => ThreeDLogic.volumeSquarePyramid(side, height);

  // ==========================================
  // 3D GEOMETRY - SURFACE AREA (Returns double)
  // ==========================================

  /// Surface area of a cube given its [side].
  double surfaceAreaCubeValue(double side) => ThreeDLogic.surfaceAreaCube(side);

  /// Surface area of a rectangular prism given [length], [width], and [height].
  double surfaceAreaRectangularPrismValue(double length, double width, double height) => ThreeDLogic.surfaceAreaRectangularPrism(length, width, height);

  /// Surface area of a cylinder given [radius] and [height].
  double surfaceAreaCylinderValue(double radius, double height) => ThreeDLogic.surfaceAreaCylinder(radius, height);

  /// Surface area of a cone given [radius] and [height].
  double surfaceAreaConeValue(double radius, double height) => ThreeDLogic.surfaceAreaCone(radius, height);

  /// Surface area of a sphere given its [radius].
  double surfaceAreaSphereValue(double radius) => ThreeDLogic.surfaceAreaSphere(radius);

  /// Surface area of a square pyramid given base [side] and [height].
  double surfaceAreaSquarePyramidValue(double side, double height) => ThreeDLogic.surfaceAreaSquarePyramid(side, height);

  // ==========================================
  // FORMATTED STRING OUTPUTS (2D)
  // ==========================================

  /// Formatted area of a square.
  String areaSquare(double side) => _formatter.format(areaSquareValue(side));

  /// Formatted area of a rectangle.
  String areaRectangle(double length, double width) => _formatter.format(areaRectangleValue(length, width));

  /// Formatted area of a triangle.
  String areaTriangle(double base, double height) => _formatter.format(areaTriangleValue(base, height));

  /// Formatted area of a triangle using three sides.
  String areaTriangleSides(double a, double b, double c) =>
      _formatter.format(areaTriangleSidesValue(a, b, c));

  /// Formatted area of a circle.
  String areaCircle(double radius) => _formatter.format(areaCircleValue(radius));

  /// Formatted area of a parallelogram.
  String areaParallelogram(double base, double height) => _formatter.format(areaParallelogramValue(base, height));

  /// Formatted area of a trapezoid.
  String areaTrapezoid(double base1, double base2, double height) => _formatter.format(areaTrapezoidValue(base1, base2, height));

  /// Formatted area of a rhombus.
  String areaRhombus(double d1, double d2) => _formatter.format(areaRhombusValue(d1, d2));

  /// Formatted area of an ellipse.
  String areaEllipse(double a, double b) => _formatter.format(areaEllipseValue(a, b));

  // ==========================================
  // FORMATTED STRING OUTPUTS (3D)
  // ==========================================

  /// Formatted volume of a cube.
  String volumeCube(double side) => _formatter.format(volumeCubeValue(side));

  /// Formatted volume of a rectangular prism.
  String volumeRectangularPrism(double length, double width, double height) => _formatter.format(volumeRectangularPrismValue(length, width, height));

  /// Formatted volume of a cylinder.
  String volumeCylinder(double radius, double height) => _formatter.format(volumeCylinderValue(radius, height));

  /// Formatted volume of a cone.
  String volumeCone(double radius, double height) => _formatter.format(volumeConeValue(radius, height));

  /// Formatted volume of a sphere.
  String volumeSphere(double radius) => _formatter.format(volumeSphereValue(radius));

  /// Formatted volume of a square pyramid.
  String volumeSquarePyramid(double side, double height) => _formatter.format(volumeSquarePyramidValue(side, height));

  /// Formatted surface area of a cube.
  String surfaceAreaCube(double side) => _formatter.format(surfaceAreaCubeValue(side));

  /// Formatted surface area of a rectangular prism.
  String surfaceAreaRectangularPrism(double length, double width, double height) => _formatter.format(surfaceAreaRectangularPrismValue(length, width, height));

  /// Formatted surface area of a cylinder.
  String surfaceAreaCylinder(double radius, double height) => _formatter.format(surfaceAreaCylinderValue(radius, height));

  /// Formatted surface area of a cone.
  String surfaceAreaCone(double radius, double height) => _formatter.format(surfaceAreaConeValue(radius, height));

  /// Formatted surface area of a sphere.
  String surfaceAreaSphere(double radius) => _formatter.format(surfaceAreaSphereValue(radius));

  /// Formatted surface area of a square pyramid.
  String surfaceAreaSquarePyramid(double side, double height) => _formatter.format(surfaceAreaSquarePyramidValue(side, height));
}
