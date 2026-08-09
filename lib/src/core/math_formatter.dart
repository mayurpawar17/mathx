import 'package:intl/intl.dart';

/// An abstract interface for formatting mathematical results.
/// This allows users to provide custom formatting logic.
abstract class MathFormatter {
  /// Formats a [double] value into a [String].
  String format(double value);
}

/// The default implementation of [MathFormatter].
/// It formats numbers to a maximum of 4 decimal places using the '#' pattern.
class StandardMathFormatter implements MathFormatter {
  // Pattern '#.####' ensures trailing zeros are removed and max 4 decimal places.
  final NumberFormat _formatter = NumberFormat('#.####');

  @override
  String format(double value) => _formatter.format(value);
}
