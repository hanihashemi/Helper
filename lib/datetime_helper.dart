class DatetimeHelper {
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
}
