import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MathUtils Tests', () {
    test('Adding two positive numbers', () {
      final mathUtils = MathUtils();
      final result = mathUtils.add(2, 3);
      expect(result, 5); // Beklenen sonuç 5 olmalı
    });

    test('Adding a positive and a negative number', () {
      final mathUtils = MathUtils();
      final result = mathUtils.add(2, -3);
      expect(result, -1); // Beklenen sonuç -1 olmalı
    });

    test('Adding two negative numbers', () {
      final mathUtils = MathUtils();
      final result = mathUtils.add(-2, -3);
      expect(result, -5); // Beklenen sonuç -5 olmalı
    });
  });
}

class MathUtils {
  int add(int a, int b) {
    return a + b;
  }
}
