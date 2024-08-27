import 'package:flutter_test/flutter_test.dart';
import 'package:test_samples/calculator.dart';

void main() {
  group('Calculator tests', () {
    test('Addition should work correctly', () {
      final calculator = Calculator();
      expect(calculator.add(2, 3), equals(5));
      expect(calculator.add(double.nan, 3), isNaN);
    });

    test('Subtraction should work correctly', () {
      final calculator = Calculator();
      expect(calculator.subtract(5, 2), equals(3));
    });
    test('Multiplication should work correctly', () {
      final calculator = Calculator();
      expect(calculator.multiply(5, 2), equals(10));
    });
    test('Dividing should work correctly', () {
      final calculator = Calculator();
      expect(calculator.divide(5, 2), equals(2.5));
    });
    test('Dividing by zero should throw an ArgumentError', () {
      final calculator = Calculator();
      expect(() => calculator.divide(5, 0), throwsA(isA<ArgumentError>()));
    });
  });
}
