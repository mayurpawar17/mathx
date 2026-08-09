/// A utility class for validating mathematical inputs.
class MathValidation {
  /// Ensures that the provided [value] is not negative.
  /// Throws an [ArgumentError] if the check fails.
  static void checkNegative(double value, String paramName) {
    if (value < 0) {
      throw ArgumentError.value(value, paramName, 'Value cannot be negative.');
    }
  }

  /// Ensures that all provided [values] are not negative.
  static void checkMultipleNegative(Map<String, double> params) {
    params.forEach((name, value) {
      checkNegative(value, name);
    });
  }

  /// Validates if three sides can form a triangle using the Triangle Inequality Theorem.
  /// The theorem states that for any triangle, the sum of the lengths of any two sides
  /// must be greater than the length of the third side.
  static void checkTriangleSides(double a, double b, double c) {
    checkMultipleNegative({'sideA': a, 'sideB': b, 'sideC': c});
    if (a + b <= c || a + c <= b || b + c <= a) {
      throw ArgumentError('The provided sides ($a, $b, $c) do not form a valid triangle.');
    }
  }
}
