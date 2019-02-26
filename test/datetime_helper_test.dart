import 'package:flutter_test/flutter_test.dart';
import 'package:helper/datetime_helper.dart';

void main() {
  test('convert, Long String to DateTime', () {
    DateTimeHelper datetimeHelper = DateTimeHelper();
    expect(
        datetimeHelper
            .convert('1974-03-20 00:00:00.000')
            .millisecondsSinceEpoch,
        132962400000);
  });

  test('convert, Short String to DateTime', () {
    DateTimeHelper datetimeHelper = DateTimeHelper();
    expect(datetimeHelper.convert('2019-02-06').millisecondsSinceEpoch,
        1549400400000);
  });

  test('calculate age, scenario 1', () {
    DateTimeHelper datetimeHelper = DateTimeHelper();
    int age =
        datetimeHelper.toAge(DateTime(1989, 2, 14), DateTime(2018, 12, 25));
    expect(age, 29);
  });

  test('calculate age, scenario 2', () {
    DateTimeHelper datetimeHelper = DateTimeHelper();
    int age =
        datetimeHelper.toAge(DateTime(1989, 2, 14), DateTime(2019, 1, 23));
    expect(age, 29);
  });

  test('calculate age, scenario 3', () {
    DateTimeHelper datetimeHelper = DateTimeHelper();
    int age =
        datetimeHelper.toAge(DateTime(1989, 2, 14), DateTime(2019, 2, 23));
    expect(age, 30);
  });

  test('calculate age, scenario 4', () {
    DateTimeHelper datetimeHelper = DateTimeHelper();
    int age = datetimeHelper.toAgeTimestampMilliseconds(
        DateTime(1989, 2, 14).millisecondsSinceEpoch,
        DateTime(2019, 2, 23).millisecondsSinceEpoch);
    expect(age, 30);
  });

  test('convert timestamp to date', (){
    DateTimeHelper datetimeHelper = DateTimeHelper();
    int timestamp = DateTime(2019, 2, 23).millisecondsSinceEpoch;

    expect(datetimeHelper.dateToString(timestamp), '23-02-2019');
  });
}
