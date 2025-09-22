import 'package:flutter_test/flutter_test.dart';
import 'package:mathx/mathx.dart';

void main() {
  test('adds one to input values', () {
    final mathX = MathX();
    //DOUBLE TYPE OUTPUT
    expect(mathX.areaSquareValue(5), 25);
    expect(mathX.areaRectangleValue(8, 4), 32);
    expect(mathX.areaParallelogramValue(7, 3), 21);
    expect(mathX.areaTriangleValue(6, 4), 12);
    expect(mathX.areaTrapezoidValue(10, 6, 5), 40);
    expect(mathX.areaRhombusValue(8, 6), 24);
    expect(mathX.areaCircleValue(7), 153.93804002589985);
    expect(mathX.areaEllipseValue(5, 3), 47.12388980384689);

    //STRING FORMAT OUTPUT

    expect(mathX.areaSquare(5), "25");
    expect(mathX.areaRectangle(8, 4), "32");
    expect(mathX.areaParallelogram(7, 3), "21");
    expect(mathX.areaTriangle(6, 4), "12");
    expect(mathX.areaTrapezoid(10, 6, 5), "40");
    expect(mathX.areaRhombus(8, 6), "24");
    expect(mathX.areaCircle(7), "153.938");
    expect(mathX.areaEllipse(5, 3), "47.1239");
  });
}
