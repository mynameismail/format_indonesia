[DateTime]: https://api.dart.dev/stable/2.8.4/dart-core/DateTime-class.html
[DateFormat]: https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html

# Indonesian Formatter for Dart
This is a library for Indonesian formatting. In this version provides [DateTime][] formatting (translation to Indonesian for weekday names, month names, and quarter names), inspired by [DateFormat][].

## Example
```dart
import 'package:format_indonesia/format_indonesia.dart';

void main() {
  // using current time
  var waktuIndonesia = WaktuIndonesia();
  print(waktuIndonesia.yMMMMEEEEd()); // Jumat, 19 Juni 2020 (this was the current time when development)

  // using specific time
  DateTime datetime = DateTime.parse('2020-05-31 12:34:13');
  print(WaktuIndonesia(datetime).yMMMMEEEEd()); // Minggu, 31 Mei 2020
}
```

## Supported formatters
```
Formatter                       Result
---------                       ------
WaktuIndonesia().E()            Jum
WaktuIndonesia().EEEE()         Jumat
WaktuIndonesia().LLL()          Jun
WaktuIndonesia().LLLL()         Juni
WaktuIndonesia().MMM()          Jun
WaktuIndonesia().MMMd()         19 Jun
WaktuIndonesia().MMMEd()        Jum, 19 Jun
WaktuIndonesia().MMMM()         Juni
WaktuIndonesia().MMMMd()        19 Juni
WaktuIndonesia().MMMMEEEEd()    Jumat, 19 Juni
WaktuIndonesia().QQQQ()         Kuartal kedua
WaktuIndonesia().yMd()          19/6/2020
WaktuIndonesia().yMEd()         Jum, 19/6/2020
WaktuIndonesia().yMMM()         Jun 2020
WaktuIndonesia().yMMMd()        19 Jun 2020
WaktuIndonesia().yMMMEd()       Jum, 19 Jun 2020
WaktuIndonesia().yMMMM()        Juni 2020
WaktuIndonesia().yMMMMd()       19 Juni 2020
WaktuIndonesia().yMMMMEEEEd()   Jumat, 19 Juni 2020
```

## Pattern formatter
```dart
import 'package:format_indonesia/format_indonesia.dart';

void main() {
  // using current time
  var waktuIndonesia = WaktuIndonesia();
  print(waktuIndonesia.format('dd MMM yyyy')); // 19 Jun 2020 (this was the current time when development)

  // using specific time
  DateTime datetime = DateTime.parse('2020-05-31 12:34:13');
  print(WaktuIndonesia(datetime).format('EEEE, d MMMM y')); // Minggu, 31 Mei 2020
}
```
Supported patterns is referenced to [DateFormat].

# Thank you.
It is really helpful if there are ideas, suggestions, or input for next improvement.
