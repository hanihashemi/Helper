import 'package:intl/intl.dart';

class CurrencyHelper{
  String formatter(String value, [String sign = '\$']) {
    if (value == null || value == '') return '-';
    double changedVal = double.parse(value);
    final formatter = NumberFormat("#,##0", "en_US");

    return '$sign${formatter.format(changedVal)}';
  }
}