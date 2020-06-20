import 'package:format_indonesia/format_indonesia.dart';
import 'package:test/test.dart';

void main() {
  String regexHariPendek = 'Sen|Sel|Rab|Kam|Jum|Sab|Min';
  String regexHari = 'Senin|Selasa|Rabu|Kamis|Jumat|Sabtu|Minggu';
  String regexBulanPendek = 'Jan|Feb|Mar|Apr|Mei|Jun|Jul|Agu|Sep|Okt|Nov|Des';
  String regexBulan = 'Januari|Februari|Maret|April|Mei|Juni|Juli|Agustus|September|Oktober|November|Desember';
  String regexKuartal = 'pertama|kedua|ketiga|keempat';

  test('Print E', () {
    String waktu = Waktu().E();
    print(waktu);
    expect(waktu, matches(regexHariPendek));
  });

  test('Print EEEE', () {
    String waktu = Waktu().EEEE();
    print(waktu);
    expect(waktu, matches(regexHari));
  });

  test('Print LLL', () {
    String waktu = Waktu().LLL();
    print(waktu);
    expect(waktu, matches(regexBulanPendek));
  });

  test('Print LLLL', () {
    String waktu = Waktu().LLLL();
    print(waktu);
    expect(waktu, matches(regexBulan));
  });

  test('Print MMM', () {
    String waktu = Waktu().MMM();
    print(waktu);
    expect(waktu, matches(regexBulanPendek));
  });

  test('Print MMMd', () {
    String waktu = Waktu().MMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s(' + regexBulanPendek + ')'));
  });

  test('Print MMMEd', () {
    String waktu = Waktu().MMMEd();
    print(waktu);
    expect(waktu, matches('(' + regexHariPendek + '),\\s\\d{1,2}\\s(' + regexBulanPendek + ')'));
  });

  test('Print MMMM', () {
    String waktu = Waktu().MMMM();
    print(waktu);
    expect(waktu, matches(regexBulan));
  });

  test('Print MMMMd', () {
    String waktu = Waktu().MMMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s(' + regexBulan + ')'));
  });

  test('Print MMMMEEEEd', () {
    String waktu = Waktu().MMMMEEEEd();
    print(waktu);
    expect(waktu, matches('(' + regexHari + '),\\s\\d{1,2}\\s(' + regexBulan + ')'));
  });

  test('Print QQQQ', () {
    String waktu = Waktu().QQQQ();
    print(waktu);
    expect(waktu, matches('Kuartal\\s(' + regexKuartal + ')'));
  });

  test('Print yMd', () {
    String waktu = Waktu().yMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}/\\d{1,2}/\\d{1,4}'));
  });

  test('Print yMEd', () {
    String waktu = Waktu().yMEd();
    print(waktu);
    expect(waktu, matches('(' + regexHariPendek + '),\\s\\d{1,2}/\\d{1,2}/\\d{1,4}'));
  });

  test('Print yMMM', () {
    String waktu = Waktu().yMMM();
    print(waktu);
    expect(waktu, matches('(' + regexBulanPendek + ')\\s\\d{1,4}'));
  });

  test('Print yMMMd', () {
    String waktu = Waktu().yMMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s(' + regexBulanPendek + ')\\s\\d{1,4}'));
  });

  test('Print yMMMEd', () {
    String waktu = Waktu().yMMMEd();
    print(waktu);
    expect(waktu, matches('(' + regexHariPendek + '),\\s\\d{1,2}\\s(' + regexBulanPendek + ')\\s\\d{1,4}'));
  });

  test('Print yMMMM', () {
    String waktu = Waktu().yMMMM();
    print(waktu);
    expect(waktu, matches('(' + regexBulan + ')\\s\\d{1,4}'));
  });

  test('Print yMMMMd', () {
    String waktu = Waktu().yMMMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s(' + regexBulan + ')\\s\\d{1,4}'));
  });

  test('Print yMMMMEEEEd', () {
    String waktu = Waktu().yMMMMEEEEd();
    print(waktu);
    expect(waktu, matches('(' + regexHari + '),\\s\\d{1,2}\\s(' + regexBulan + ')\\s\\d{1,4}'));
  });
  
  test('Print EEEE, d MMMM y', () {
    String waktu = Waktu().format('EEEE, d MMMM y');
    print(waktu);
    expect(waktu, matches('(' + regexHari + '),\\s\\d{1,2}\\s(' + regexBulan + ')\\s\\d{1,4}'));
  });

  test('Print dd MMM yyyy', () {
    String waktu = Waktu().format('dd MMM yyyy');
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s(' + regexBulanPendek + ')\\s\\d{1,4}'));
  });
}
