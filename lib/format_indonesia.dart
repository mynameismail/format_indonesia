import 'package:intl/intl.dart';

class Waktu {
  
  DateTime dateTime;

  static const List<String> _hari = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'];
  static const List<String> _bulan = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
  static const List<String> _kuartal = ['pertama', 'kedua', 'ketiga', 'keempat'];

  Waktu([DateTime dateTime]) {
    this.dateTime = dateTime ?? DateTime.now();
  }

  String E() => _hari[this.dateTime.weekday - 1].substring(0, 3);
  String EEEE() => _hari[this.dateTime.weekday - 1];
  String LLL() => _bulan[this.dateTime.month - 1].substring(0, 3);
  String LLLL() => _bulan[this.dateTime.month - 1];
  String MMM() => _bulan[this.dateTime.month - 1].substring(0, 3);
  String MMMd() => '${this.dateTime.day.toString()} ${_bulan[this.dateTime.month - 1].substring(0, 3)}';
  String MMMEd() => '${_hari[this.dateTime.weekday - 1].substring(0, 3)}, ${this.dateTime.day.toString()} ${_bulan[this.dateTime.month - 1].substring(0, 3)}';
  String MMMM() => _bulan[this.dateTime.month - 1];
  String MMMMd() => '${this.dateTime.day.toString()} ${_bulan[this.dateTime.month - 1]}';
  String MMMMEEEEd() => '${_hari[this.dateTime.weekday - 1]}, ${this.dateTime.day.toString()} ${_bulan[this.dateTime.month - 1]}';
  String QQQQ() => 'Kuartal ${_kuartal[((this.dateTime.month - 1) / 3).floor()]}';
  String yMd() => '${this.dateTime.day.toString()}/${this.dateTime.month.toString()}/${this.dateTime.year.toString()}';
  String yMEd() => '${_hari[this.dateTime.weekday - 1].substring(0, 3)}, ${this.dateTime.day.toString()}/${this.dateTime.month.toString()}/${this.dateTime.year.toString()}';
  String yMMM() => '${_bulan[this.dateTime.month - 1].substring(0, 3)} ${this.dateTime.year.toString()}';
  String yMMMd() => '${this.dateTime.day.toString()} ${_bulan[this.dateTime.month - 1].substring(0, 3)} ${this.dateTime.year.toString()}';
  String yMMMEd() => '${_hari[this.dateTime.weekday - 1].substring(0, 3)}, ${this.dateTime.day.toString()} ${_bulan[this.dateTime.month - 1].substring(0, 3)} ${this.dateTime.year.toString()}';
  String yMMMM() => '${_bulan[this.dateTime.month - 1]} ${this.dateTime.year.toString()}';
  String yMMMMd() => '${this.dateTime.day.toString()} ${_bulan[this.dateTime.month - 1]} ${this.dateTime.year.toString()}';
  String yMMMMEEEEd() => '${_hari[this.dateTime.weekday - 1]}, ${this.dateTime.day.toString()} ${_bulan[this.dateTime.month - 1]} ${this.dateTime.year.toString()}';

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


class Numerik {

  int number;

  static const List<String> _bilang = ['', 'satu', 'dua', 'tiga', 'empat', 'lima', 'enam', 'tujuh', 'delapan', 'sembilan'];

  Numerik(this.number);

  String _doTerbilang(int number) {
    if (number < 10) return _bilang[number];
    if (number < 20) {
      int modsepuluh = number % 10;
      if (modsepuluh == 0) return 'sepuluh';
      else if (modsepuluh == 1) return 'sebelas';
      return '${_bilang[modsepuluh]} belas';
    }
    if (number < 100) {
      int divsepuluh = number ~/ 10;
      int modsepuluh = number % 10;
      String result = '${_bilang[divsepuluh]} puluh';
      if (modsepuluh > 0) result = '$result ${_bilang[modsepuluh]}';
      return result;
    }
    if (number < 1000) {
      int divseratus = number ~/ 100;
      int modseratus = number % 100;
      String result = '';
      if (divseratus == 1) result = 'seratus';
      else result = '${_bilang[divseratus]} ratus';
      if (modseratus > 0) result = '$result ${_doTerbilang(modseratus)}';
      return result;
    }
    if (number < 1000000) {
      int divseribu = number ~/ 1000;
      int modseribu = number % 1000;
      String result = '';
      if (divseribu == 1) result = 'seribu';
      else result = '${_doTerbilang(divseribu)} ribu';
      if (modseribu > 0) result = '$result ${_doTerbilang(modseribu)}';
      return result;
    }
    return '';
  }

  String terbilang() {
    if (this.number < 0) throw Exception('Not accepting a negative number');
    if (this.number == 0) return 'nol';
    return _doTerbilang(this.number);
  }
}
