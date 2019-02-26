import 'package:intl/intl.dart';

class DateTimeHelper {
  DateTime convert(String strDatetime) {
    return DateTime.parse(strDatetime);
  }

  int toAge(DateTime birthday, [DateTime now]) {
    if (now == null) now = DateTime.now();

    return (birthday.difference(now).inDays ~/ 365).abs();
  }

  int toAgeTimestampMilliseconds(int birthday, [int now]) {
    return toAge(DateTime.fromMillisecondsSinceEpoch(birthday),
        DateTime.fromMillisecondsSinceEpoch(now));
  }

  String dateToString(int timestamp, [String format = 'dd-MM-yyyy']) {
    if (timestamp == null || timestamp == 0) return '-';
    var dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    var dateFormat = DateFormat(format);
    return dateFormat.format(dateTime);
  }
}
