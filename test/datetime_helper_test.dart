import 'package:flutter_test/flutter_test.dart';
import 'package:helper/datetime_helper.dart';

void main() {
  test('convert, Long String to DateTime', () {
    DatetimeHelper datetimeHelper = DatetimeHelper();
    expect(datetimeHelper.convert('1974-03-20 00:00:00.000').millisecondsSinceEpoch, 132962400000);
  });

  test('convert, Short String to DateTime', () {
    DatetimeHelper datetimeHelper = DatetimeHelper();
    expect(datetimeHelper.convert('2019-02-06').millisecondsSinceEpoch, 1549400400000);
  });
}