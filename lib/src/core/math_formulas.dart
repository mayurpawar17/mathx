/// A collection of mathematical formulas used in the library.
class MathFormulas {
  // 2D Formulas
  static const String areaSquare = 's²';
  static const String areaRectangle = 'l × w';
  static const String areaTriangle = '½ × b × h';
  static const String areaCircle = 'π × r²';
  static const String areaParallelogram = 'b × h';
  static const String areaTrapezoid = '½ × (b1 + b2) × h';
  static const String areaRhombus = '½ × d1 × d2';
  static const String areaEllipse = 'π × a × b';

  // 3D Formulas - Volume
  static const String volumeCube = 's³';
  static const String volumeRectangularPrism = 'l × w × h';
  static const String volumeCylinder = 'π × r² × h';
  static const String volumeCone = '⅓ × π × r² × h';
  static const String volumeSphere = '⁴/₃ × π × r³';
  static const String volumeSquarePyramid = '⅓ × s² × h';

  // 3D Formulas - Surface Area
  static const String surfaceAreaCube = '6 × s²';
  static const String surfaceAreaRectangularPrism = '2 × (lw + lh + wh)';
  static const String surfaceAreaCylinder = '2πrh + 2πr²';
  static const String surfaceAreaCone = 'πr(r + √(h² + r²))';
  static const String surfaceAreaSphere = '4 × π × r²';
  static const String surfaceAreaSquarePyramid = 's² + s × √(s² + 4h²)';
}
