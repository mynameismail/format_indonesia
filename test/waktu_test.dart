import 'package:format_indonesia/format_indonesia.dart';
import 'package:test/test.dart';

void main() {
  String regexHariPendek = 'Sen|Sel|Rab|Kam|Jum|Sab|Min';
  String regexHari = 'Senin|Selasa|Rabu|Kamis|Jumat|Sabtu|Minggu';
  String regexBulanPendek = 'Jan|Feb|Mar|Apr|Mei|Jun|Jul|Agu|Sep|Okt|Nov|Des';
  String regexBulan = 'Januari|Februari|Maret|April|Mei|Juni|Juli|Agustus|September|Oktober|November|Desember';
  String regexKuartal = 'pertama|kedua|ketiga|keempat';

  test('Print E', () {
    String waktu = WaktuIndonesia().E();
    print(waktu);
    expect(waktu, matches(regexHariPendek));
  });

  test('Print EEEE', () {
    String waktu = WaktuIndonesia().EEEE();
    print(waktu);
    expect(waktu, matches(regexHari));
  });

  test('Print LLL', () {
    String waktu = WaktuIndonesia().LLL();
    print(waktu);
    expect(waktu, matches(regexBulanPendek));
  });

  test('Print LLLL', () {
    String waktu = WaktuIndonesia().LLLL();
    print(waktu);
    expect(waktu, matches(regexBulan));
  });

  test('Print MMM', () {
    String waktu = WaktuIndonesia().MMM();
    print(waktu);
    expect(waktu, matches(regexBulanPendek));
  });

  test('Print MMMd', () {
    String waktu = WaktuIndonesia().MMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s(' + regexBulanPendek + ')'));
  });

  test('Print MMMEd', () {
    String waktu = WaktuIndonesia().MMMEd();
    print(waktu);
    expect(waktu, matches('(' + regexHariPendek + '),\\s\\d{1,2}\\s(' + regexBulanPendek + ')'));
  });

  test('Print MMMM', () {
    String waktu = WaktuIndonesia().MMMM();
    print(waktu);
    expect(waktu, matches(regexBulan));
  });

  test('Print MMMMd', () {
    String waktu = WaktuIndonesia().MMMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s(' + regexBulan + ')'));
  });

  test('Print MMMMEEEEd', () {
    String waktu = WaktuIndonesia().MMMMEEEEd();
    print(waktu);
    expect(waktu, matches('(' + regexHari + '),\\s\\d{1,2}\\s(' + regexBulan + ')'));
  });

  test('Print QQQQ', () {
    String waktu = WaktuIndonesia().QQQQ();
    print(waktu);
    expect(waktu, matches('Kuartal\\s(' + regexKuartal + ')'));
  });

  test('Print yMd', () {
    String waktu = WaktuIndonesia().yMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}/\\d{1,2}/\\d{1,4}'));
  });

  test('Print yMEd', () {
    String waktu = WaktuIndonesia().yMEd();
    print(waktu);
    expect(waktu, matches('(' + regexHariPendek + '),\\s\\d{1,2}/\\d{1,2}/\\d{1,4}'));
  });

  test('Print yMMM', () {
    String waktu = WaktuIndonesia().yMMM();
    print(waktu);
    expect(waktu, matches('(' + regexBulanPendek + ')\\s\\d{1,4}'));
  });

  test('Print yMMMd', () {
    String waktu = WaktuIndonesia().yMMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s(' + regexBulanPendek + ')\\s\\d{1,4}'));
  });

  test('Print yMMMEd', () {
    String waktu = WaktuIndonesia().yMMMEd();
    print(waktu);
    expect(waktu, matches('(' + regexHariPendek + '),\\s\\d{1,2}\\s(' + regexBulanPendek + ')\\s\\d{1,4}'));
  });

  test('Print yMMMM', () {
    String waktu = WaktuIndonesia().yMMMM();
    print(waktu);
    expect(waktu, matches('(' + regexBulan + ')\\s\\d{1,4}'));
  });

  test('Print yMMMMd', () {
    String waktu = WaktuIndonesia().yMMMMd();
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s(' + regexBulan + ')\\s\\d{1,4}'));
  });

  test('Print yMMMMEEEEd', () {
    String waktu = WaktuIndonesia().yMMMMEEEEd();
    print(waktu);
    expect(waktu, matches('(' + regexHari + '),\\s\\d{1,2}\\s(' + regexBulan + ')\\s\\d{1,4}'));
  });
  
  test('Print EEEE, d MMMM y', () {
    String waktu = WaktuIndonesia().format('EEEE, d MMMM y');
    print(waktu);
    expect(waktu, matches('(' + regexHari + '),\\s\\d{1,2}\\s(' + regexBulan + ')\\s\\d{1,4}'));
  });

  test('Print dd MMM yyyy', () {
    String waktu = WaktuIndonesia().format('dd MMM yyyy');
    print(waktu);
    expect(waktu, matches('\\d{1,2}\\s(' + regexBulanPendek + ')\\s\\d{1,4}'));
  });
}
