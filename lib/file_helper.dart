
class FileHelper {
  String getFileName(String path) {
    RegExp regex = RegExp(r'\/([\w-]+\.[\w]{1,})');
    Match match = regex.firstMatch(path);
    if (match.groupCount == 1) return regex.firstMatch(path).group(1);
    return '';
  }
}