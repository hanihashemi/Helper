import 'package:flutter_test/flutter_test.dart';
import 'package:helper/file_helper.dart';

void main() {
  test('getFileNameFromPath, NormalCase', () {
    FileHelper fileHelper = FileHelper();
    expect(fileHelper.getFileName('/home/hani/Downloads/myfile.jpeg'),
        'myfile.jpeg');
  });

  test('getFileNameFromPath, TooManyChars', () {
    FileHelper fileHelper = FileHelper();
    expect(
        fileHelper.getFileName('/home/hani/Downloads/123dW4rfasXmyfile.jpeg'),
        '123dW4rfasXmyfile.jpeg');
  });
}
