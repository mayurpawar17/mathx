# MathX

![pub package](https://img.shields.io/pub/v/mathx.svg)
![null safety](https://img.shields.io/badge/null%20safety-supported-brightgreen)
![License](https://img.shields.io/badge/license-MIT-green)

[//]: # (![downloads]&#40;https://img.shields.io/pub/dm/mathx&#41;)
[//]: # (![likes]&#40;https://img.shields.io/pub/likes/mathx&#41;)
[//]: # (![popularity]&#40;https://img.shields.io/pub/popularity/mathx&#41;)

---

**MathX** is a Dart package for Flutter and Dart projects that provides easy-to-use **geometry and mathematical calculations**.  
It supports **2D shapes** (area) and is fully **null-safe**. All outputs can be obtained as **double** or **formatted string** for display purposes.

With MathX, you can calculate areas of **squares, rectangles, triangles, trapezoids, rhombuses, circles, and ellipses**, as well as volumes and surface areas of **cubes, prisms, cylinders, cones, spheres, and pyramids** quickly and accurately.

---

## Getting Started
![Flutter](https://storage.googleapis.com/cms-storage-bucket/6e19fee6b47b36ca613f.png)

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

  // 2D outputs
  print(math.areaSquareValue(5));      // 25.0
  print(math.areaCircle(7));            // "153.938"

  // 3D outputs (New!)
  print(math.volumeSphereValue(3));     // 113.09733552923255
  print(math.surfaceAreaCylinder(2, 5)); // "87.9646"
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

### 3D Shapes - Volume & Surface Area (New!)

| Method | Description | Returns |
|--------|------------|---------|
| `volumeCubeValue(side)` | Volume of a cube | `double` |
| `volumeRectangularPrismValue(l, w, h)` | Volume of a prism | `double` |
| `volumeCylinderValue(r, h)` | Volume of a cylinder | `double` |
| `volumeConeValue(r, h)` | Volume of a cone | `double` |
| `volumeSphereValue(r)` | Volume of a sphere | `double` |
| `volumeSquarePyramidValue(s, h)` | Volume of a square pyramid | `double` |
| `surfaceAreaCubeValue(side)` | Surface area of a cube | `double` |
| `surfaceAreaSphereValue(r)` | Surface area of a sphere | `double` |

*(And many more... all 3D methods also support formatted `String` returns)*
