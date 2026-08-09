import 'math_formulas.dart';

/// Provides step-by-step string explanations for mathematical calculations.
class MathExplanation {
  static String areaSquare(double s, String result) =>
      '${s}² = $result';

  static String areaRectangle(double l, double w, String result) =>
      '$l × $w = $result';

  static String areaTriangle(double b, double h, String result) =>
      '½ × $b × $h = $result';

  static String areaCircle(double r, String result) =>
      'π × ${r}² = $result';

  static String areaParallelogram(double b, double h, String result) =>
      '$b × $h = $result';

  static String areaTrapezoid(double b1, double b2, double h, String result) =>
      '½ × ($b1 + $b2) × $h = $result';

  static String areaRhombus(double d1, double d2, String result) =>
      '½ × $d1 × $d2 = $result';

  static String areaEllipse(double a, double b, String result) =>
      'π × $a × $b = $result';

  // --- Volume ---
  static String volumeCube(double s, String result) =>
      '${s}³ = $result';

  static String volumeRectangularPrism(double l, double w, double h, String result) =>
      '$l × $w × $h = $result';

  static String volumeCylinder(double r, double h, String result) =>
      'π × ${r}² × $h = $result';

  static String volumeCone(double r, double h, String result) =>
      '⅓ × π × ${r}² × $h = $result';

  static String volumeSphere(double r, String result) =>
      '⁴/₃ × π × ${r}³ = $result';

  static String volumeSquarePyramid(double s, double h, String result) =>
      '⅓ × ${s}² × $h = $result';

  // --- Surface Area ---
  static String surfaceAreaCube(double s, String result) =>
      '6 × ${s}² = $result';

  static String surfaceAreaRectangularPrism(double l, double w, double h, String result) =>
      '2 × ($l×$w + $l×$h + $w×$h) = $result';

  static String surfaceAreaCylinder(double r, double h, String result) =>
      '2π($r)($h) + 2π(${r}²) = $result';

  static String surfaceAreaCone(double r, double h, String result) =>
      'π($r)($r + √(${h}² + ${r}²)) = $result';

  static String surfaceAreaSphere(double r, String result) =>
      '4 × π × ${r}² = $result';

  static String surfaceAreaSquarePyramid(double s, double h, String result) =>
      '${s}² + $s × √(${s}² + 4×${h}²) = $result';
}
