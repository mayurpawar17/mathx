# MathX

![pub package](https://img.shields.io/pub/v/mathx.svg)
![likes](https://img.shields.io/pub/likes/mathx)
![popularity](https://img.shields.io/pub/popularity/mathx)
![null safety](https://img.shields.io/badge/null%20safety-supported-brightgreen)
![License](https://img.shields.io/badge/license-MIT-green)
![downloads](https://img.shields.io/pub/dm/mathx)

---

## Description

**MathX** is a Dart package for Flutter and Dart projects that provides easy-to-use **geometry and mathematical calculations**.  
It supports **2D shapes** (area, perimeter, circumference) and is fully **null-safe**. All outputs can be obtained as **double** or **formatted string** for display purposes.

With MathX, you can calculate areas of **squares, rectangles, triangles, trapezoids, rhombuses, circles, and ellipses** quickly and accurately.

---

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  mathx: ^0.0.1
```

Then run:

```shell
flutter pub get
```

Import the package:

```shell
import 'package:mathx/mathx.dart';
```

## Usage

```dart
import 'package:mathx/mathx.dart';

void main() {
  final math = MathX();

  // Double outputs
  print(math.areaSquareValue(5));      // 25.0
  print(math.areaRectangleValue(8, 4)); // 32.0
  print(math.areaTriangleValue(6, 4));  // 12.0
  print(math.areaCircleValue(7));       // 153.93804002589985

  // Formatted string outputs
  print(math.areaSquare(5));            // "25"
  print(math.areaRectangle(8, 4));      // "32"
  print(math.areaTriangle(6, 4));       // "12"
  print(math.areaCircle(7));            // "153.938"
}

```

## Methods

### 2D Shapes - Area

| Method | Description | Returns |
|--------|------------|---------|
| `areaSquareValue(length)` | Calculates area of a square | `double` |
| `areaRectangleValue(width, height)` | Calculates area of a rectangle | `double` |
| `areaParallelogramValue(base, height)` | Calculates area of a parallelogram | `double` |
| `areaTriangleValue(base, height)` | Calculates area of a triangle | `double` |
| `areaTrapezoidValue(base1, base2, height)` | Calculates area of a trapezoid | `double` |
| `areaRhombusValue(diagonal1, diagonal2)` | Calculates area of a rhombus | `double` |
| `areaCircleValue(radius)` | Calculates area of a circle | `double` |
| `areaEllipseValue(a, b)` | Calculates area of an ellipse | `double` |


### 2D Shapes - Formatted String

| Method | Description | Returns |
|--------|------------|---------|
| `areaSquare(length)` | Calculates area of a square and returns a formatted string | `String` |
| `areaRectangle(width, height)` | Calculates area of a rectangle and returns a formatted string | `String` |
| `areaParallelogram(base, height)` | Calculates area of a parallelogram and returns a formatted string | `String` |
| `areaTriangle(base, height)` | Calculates area of a triangle and returns a formatted string | `String` |
| `areaTrapezoid(base1, base2, height)` | Calculates area of a trapezoid and returns a formatted string | `String` |
| `areaRhombus(diagonal1, diagonal2)` | Calculates area of a rhombus and returns a formatted string | `String` |
| `areaCircle(radius)` | Calculates area of a circle and returns a formatted string | `String` |
| `areaEllipse(a, b)` | Calculates area of an ellipse and returns a formatted string | `String` |
