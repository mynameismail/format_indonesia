[DateTime]: https://api.dart.dev/stable/2.8.4/dart-core/DateTime-class.html
[DateFormat]: https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html

# Indonesian Formatter for Dart
This is a library for Indonesian formatting. In this version provides [DateTime][] formatting (translation to Indonesian for weekday names, month names, and quarter names), inspired by [DateFormat][].

## Example
```dart
import 'package:format_indonesia/format_indonesia.dart';

void main() {
  // using current time
  var waktu = Waktu();
  print(waktu.yMMMMEEEEd()); // Jumat, 19 Juni 2020 (this was the current time when development)

  // using specific time
  DateTime datetime = DateTime.parse('2020-05-31 12:34:13');
  print(Waktu(datetime).yMMMMEEEEd()); // Minggu, 31 Mei 2020
}
```

## Supported formatters
```
Formatter                       Result
---------                       ------
Waktu().E()                     Jum
Waktu().EEEE()                  Jumat
Waktu().LLL()                   Jun
Waktu().LLLL()                  Juni
Waktu().MMM()                   Jun
Waktu().MMMd()                  19 Jun
Waktu().MMMEd()                 Jum, 19 Jun
Waktu().MMMM()                  Juni
Waktu().MMMMd()                 19 Juni
Waktu().MMMMEEEEd()             Jumat, 19 Juni
Waktu().QQQQ()                  Kuartal kedua
Waktu().yMd()                   19/6/2020
Waktu().yMEd()                  Jum, 19/6/2020
Waktu().yMMM()                  Jun 2020
Waktu().yMMMd()                 19 Jun 2020
Waktu().yMMMEd()                Jum, 19 Jun 2020
Waktu().yMMMM()                 Juni 2020
Waktu().yMMMMd()                19 Juni 2020
Waktu().yMMMMEEEEd()            Jumat, 19 Juni 2020
```

## Pattern formatter
```dart
import 'package:format_indonesia/format_indonesia.dart';

void main() {
  // using current time
  var waktu = Waktu();
  print(waktu.format('dd MMM yyyy')); // 19 Jun 2020 (this was the current time when development)

  // using specific time
  DateTime datetime = DateTime.parse('2020-05-31 12:34:13');
  print(Waktu(datetime).format('EEEE, d MMMM y')); // Minggu, 31 Mei 2020
}
```
Supported patterns is referenced to [DateFormat].

# Thank you.
It is really helpful if there are ideas, suggestions, or input for next improvement.
