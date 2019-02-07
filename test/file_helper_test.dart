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

  test('getFileNameFromPath, With dot', () {
    FileHelper fileHelper = FileHelper();
    expect(
        fileHelper.getFileName('/data/user/0/com.rotortrade.rotortrade/cache/sample.pdf'),
        'sample.pdf');
  });

  test('getFileExtension, normal file', () {
    FileHelper fileHelper = FileHelper();
    expect(
        fileHelper
            .getFileExtension('/home/hani/Downloads/123dW4rfasXmyfile.jpeg'),
        'jpeg');
  });

  test('getFileExtension, directory file', () {
    FileHelper fileHelper = FileHelper();
    expect(
        fileHelper.getFileExtension('/home/hani/Downloads/123dW4rfasXmyfile'),
        '');
  });

  test('getFileExtension, with dot', () {
    FileHelper fileHelper = FileHelper();
    expect(
        fileHelper.getFileExtension('/data/user/0/com.rotortrade.rotortrade/cache/sample.pdf'), 'pdf');
  });
}
