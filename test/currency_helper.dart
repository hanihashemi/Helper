import 'package:flutter_test/flutter_test.dart';
import 'package:helper/currency_helper.dart';

void main() {
  test('format empty or null currency', (){
    CurrencyHelper currencyHelper = CurrencyHelper();

    expect(currencyHelper.formatter(''), '');
    expect(currencyHelper.formatter(null), '');
  });

  test('format currency', (){
    CurrencyHelper currencyHelper = CurrencyHelper();

    expect(currencyHelper.formatter('40'), '\$40');
  });

  test('format currency long price with Turkish sign', (){
    CurrencyHelper currencyHelper = CurrencyHelper();
    expect(currencyHelper.formatter('400000', 'tr'), 'tr400,000');
  });
}
