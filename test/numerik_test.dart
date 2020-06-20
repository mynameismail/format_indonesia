import 'package:format_indonesia/format_indonesia.dart';
import 'package:test/test.dart';

void main() {
  // Exception: Not accept negative number
  // test('Terbilang -1', () {
  //   String terbilang = Numerik(-1).terbilang();
  //   print(terbilang);
  //   expect(terbilang, equals(''));
  // });

  test('Terbilang 0', () {
    String terbilang = Numerik(0).terbilang();
    print(terbilang);
    expect(terbilang, equals('nol'));
  });

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

  test('Terbilang 150', () {
    String terbilang = Numerik(150).terbilang();
    print(terbilang);
    expect(terbilang, equals('seratus lima puluh'));
  });

  test('Terbilang 500', () {
    String terbilang = Numerik(500).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima ratus'));
  });

  test('Terbilang 555', () {
    String terbilang = Numerik(555).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima ratus lima puluh lima'));
  });

  test('Terbilang 911', () {
    String terbilang = Numerik(911).terbilang();
    print(terbilang);
    expect(terbilang, equals('sembilan ratus sebelas'));
  });

  test('Terbilang 1000', () {
    String terbilang = Numerik(1000).terbilang();
    print(terbilang);
    expect(terbilang, equals('seribu'));
  });

  test('Terbilang 1101', () {
    String terbilang = Numerik(1101).terbilang();
    print(terbilang);
    expect(terbilang, equals('seribu seratus satu'));
  });

  test('Terbilang 111.010', () {
    String terbilang = Numerik(111010).terbilang();
    print(terbilang);
    expect(terbilang, equals('seratus sebelas ribu sepuluh'));
  });

  test('Terbilang 1.050.005', () {
    String terbilang = Numerik(1050005).terbilang();
    print(terbilang);
    expect(terbilang, equals('satu juta lima puluh ribu lima'));
  });

  test('Terbilang 501.501.501', () {
    String terbilang = Numerik(501501501).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima ratus satu juta lima ratus satu ribu lima ratus satu'));
  });

  test('Terbilang 100.115.100.115', () {
    String terbilang = Numerik(100115100115).terbilang();
    print(terbilang);
    expect(terbilang, equals('seratus milyar seratus lima belas juta seratus ribu seratus lima belas'));
  });

  test('Terbilang 510.000.510.000.510', () {
    String terbilang = Numerik(510000510000510).terbilang();
    print(terbilang);
    expect(terbilang, equals('lima ratus sepuluh triliun lima ratus sepuluh juta lima ratus sepuluh'));
  });

  // Exception: Out of limit convertion
  // test('Terbilang 150.051.150.051.150.051', () {
  //   String terbilang = Numerik(150051150051150051).terbilang();
  //   print(terbilang);
  //   expect(terbilang, equals(''));
  // });
}
