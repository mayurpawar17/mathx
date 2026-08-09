import 'dart:math';

/// A utility class containing pure mathematical logic for 3D shapes.
/// These methods return raw [double] values for Volume and Surface Area.
class ThreeDLogic {
  // --- Volume Calculations ---

  /// Calculates the volume of a cube: side³.
  static double volumeCube(double s) => pow(s, 3).toDouble();

  /// Calculates the volume of a rectangular prism: length * width * height.
  static double volumeRectangularPrism(double l, double w, double h) => l * w * h;

  /// Calculates the volume of a cylinder: π * radius² * height.
  static double volumeCylinder(double r, double h) => pi * r * r * h;

  /// Calculates the volume of a cone: (1/3) * π * radius² * height.
  static double volumeCone(double r, double h) => (1 / 3) * pi * r * r * h;

  /// Calculates the volume of a sphere: (4/3) * π * radius³.
  static double volumeSphere(double r) => (4 / 3) * pi * pow(r, 3);

  /// Calculates the volume of a square pyramid: (1/3) * side² * height.
  static double volumeSquarePyramid(double s, double h) => (1 / 3) * s * s * h;

  // --- Surface Area Calculations ---

  /// Calculates the surface area of a cube: 6 * side².
  static double surfaceAreaCube(double s) => 6 * s * s;

  /// Calculates the surface area of a rectangular prism: 2 * (lw + lh + wh).
  static double surfaceAreaRectangularPrism(double l, double w, double h) =>
      2 * (l * w + l * h + w * h);

  /// Calculates the surface area of a cylinder: 2πrh + 2πr².
  static double surfaceAreaCylinder(double r, double h) =>
      (2 * pi * r * h) + (2 * pi * r * r);

  /// Calculates the surface area of a cone: πr(r + √(h² + r²)).
  static double surfaceAreaCone(double r, double h) =>
      pi * r * (r + sqrt(h * h + r * r));

  /// Calculates the surface area of a sphere: 4 * π * radius².
  static double surfaceAreaSphere(double r) => 4 * pi * r * r;

  /// Calculates the surface area of a square pyramid: s² + s * √(s² + 4h²).
  static double surfaceAreaSquarePyramid(double s, double h) =>
      (s * s) + s * sqrt(s * s + 4 * h * h);
}
