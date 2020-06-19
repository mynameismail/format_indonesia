import 'package:intl/intl.dart';

class WaktuIndonesia {
  
  DateTime dateTime;

  static const List<String> hari = [
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jumat',
    'Sabtu',
    'Minggu'
  ];

  static const List<String> bulan = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];

  static const List<String> kuartal = ['pertama', 'kedua', 'ketiga', 'keempat'];

  WaktuIndonesia([DateTime dateTime]) {
    this.dateTime = dateTime ?? DateTime.now();
  }

  String E() => hari[this.dateTime.weekday - 1].substring(0, 3);
  String EEEE() => hari[this.dateTime.weekday - 1];
  String LLL() => bulan[this.dateTime.month - 1].substring(0, 3);
  String LLLL() => bulan[this.dateTime.month - 1];
  String MMM() => bulan[this.dateTime.month - 1].substring(0, 3);
  String MMMd() => '${this.dateTime.day.toString()} ${bulan[this.dateTime.month - 1].substring(0, 3)}';
  String MMMEd() => '${hari[this.dateTime.weekday - 1].substring(0, 3)}, ${this.dateTime.day.toString()} ${bulan[this.dateTime.month - 1].substring(0, 3)}';
  String MMMM() => bulan[this.dateTime.month - 1];
  String MMMMd() => '${this.dateTime.day.toString()} ${bulan[this.dateTime.month - 1]}';
  String MMMMEEEEd() => '${hari[this.dateTime.weekday - 1]}, ${this.dateTime.day.toString()} ${bulan[this.dateTime.month - 1]}';
  String QQQQ() => 'Kuartal ${kuartal[((this.dateTime.month - 1) / 3).floor()]}';
  String yMd() => '${this.dateTime.day.toString()}/${this.dateTime.month.toString()}/${this.dateTime.year.toString()}';
  String yMEd() => '${hari[this.dateTime.weekday - 1].substring(0, 3)}, ${this.dateTime.day.toString()}/${this.dateTime.month.toString()}/${this.dateTime.year.toString()}';
  String yMMM() => '${bulan[this.dateTime.month - 1].substring(0, 3)} ${this.dateTime.year.toString()}';
  String yMMMd() => '${this.dateTime.day.toString()} ${bulan[this.dateTime.month - 1].substring(0, 3)} ${this.dateTime.year.toString()}';
  String yMMMEd() => '${hari[this.dateTime.weekday - 1].substring(0, 3)}, ${this.dateTime.day.toString()} ${bulan[this.dateTime.month - 1].substring(0, 3)} ${this.dateTime.year.toString()}';
  String yMMMM() => '${bulan[this.dateTime.month - 1]} ${this.dateTime.year.toString()}';
  String yMMMMd() => '${this.dateTime.day.toString()} ${bulan[this.dateTime.month - 1]} ${this.dateTime.year.toString()}';
  String yMMMMEEEEd() => '${hari[this.dateTime.weekday - 1]}, ${this.dateTime.day.toString()} ${bulan[this.dateTime.month - 1]} ${this.dateTime.year.toString()}';

  String format(String format) {
    format = format.replaceAll('EEEE', "'${this.EEEE()}'");
    format = format.replaceAll('E', "'${this.E()}'");
    format = format.replaceAll('LLLL', "'${this.LLLL()}'");
    format = format.replaceAll('LLL', "'${this.LLL()}'");
    format = format.replaceAll('MMMM', "'${this.MMMM()}'");
    format = format.replaceAll('MMM', "'${this.MMM()}'");

    return DateFormat(format).format(this.dateTime);
  }
}
