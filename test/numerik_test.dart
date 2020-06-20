import 'package:format_indonesia/format_indonesia.dart';
import 'package:test/test.dart';

void main() {
  test('Terbilang 1', () {
    String terbilang = Numerik(1).terbilang();
    print(terbilang);
    expect(terbilang, equals('satu'));
  });

  test('Terbilang 5', () {
    String terbilang = Numerik(5).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima'));
  });

  test('Terbilang 10', () {
    String terbilang = Numerik(10).terbilang();
    print(terbilang);
    expect(terbilang, equals('sepuluh'));
  });

  test('Terbilang 11', () {
    String terbilang = Numerik(11).terbilang();
    print(terbilang);
    expect(terbilang, equals('sebelas'));
  });

  test('Terbilang 15', () {
    String terbilang = Numerik(15).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima belas'));
  });

  test('Terbilang 20', () {
    String terbilang = Numerik(20).terbilang();
    print(terbilang);
    expect(terbilang, equals('dua puluh'));
  });

  test('Terbilang 89', () {
    String terbilang = Numerik(89).terbilang();
    print(terbilang);
    expect(terbilang, equals('delapan puluh sembilan'));
  });

  test('Terbilang 100', () {
    String terbilang = Numerik(100).terbilang();
    print(terbilang);
    expect(terbilang, equals('seratus'));
  });

  test('Terbilang 105', () {
    String terbilang = Numerik(105).terbilang();
    print(terbilang);
    expect(terbilang, equals('seratus lima'));
  });

  test('Terbilang 110', () {
    String terbilang = Numerik(110).terbilang();
    print(terbilang);
    expect(terbilang, equals('seratus sepuluh'));
  });

  test('Terbilang 111', () {
    String terbilang = Numerik(111).terbilang();
    print(terbilang);
    expect(terbilang, equals('seratus sebelas'));
  });

  test('Terbilang 115', () {
    String terbilang = Numerik(115).terbilang();
    print(terbilang);
    expect(terbilang, equals('seratus lima belas'));
  });

  test('Terbilang 120', () {
    String terbilang = Numerik(120).terbilang();
    print(terbilang);
    expect(terbilang, equals('seratus dua puluh'));
  });

  test('Terbilang 125', () {
    String terbilang = Numerik(125).terbilang();
    print(terbilang);
    expect(terbilang, equals('seratus dua puluh lima'));
  });

  test('Terbilang 500', () {
    String terbilang = Numerik(500).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima ratus'));
  });

  test('Terbilang 505', () {
    String terbilang = Numerik(505).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima ratus lima'));
  });

  test('Terbilang 510', () {
    String terbilang = Numerik(510).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima ratus sepuluh'));
  });

  test('Terbilang 515', () {
    String terbilang = Numerik(515).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima ratus lima belas'));
  });

  test('Terbilang 520', () {
    String terbilang = Numerik(520).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima ratus dua puluh'));
  });

  test('Terbilang 525', () {
    String terbilang = Numerik(525).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima ratus dua puluh lima'));
  });

  test('Terbilang 911', () {
    String terbilang = Numerik(911).terbilang();
    print(terbilang);
    expect(terbilang, equals('sembilan ratus sebelas'));
  });

  test('Terbilang 911119', () {
    String terbilang = Numerik(911119).terbilang();
    print(terbilang);
    expect(terbilang, equals('sembilan ratus sebelas ribu seratus sembilan belas'));
  });
}
