
class FileHelper {
  String getFileName(String path) {
    RegExp regex = RegExp(r'\/([\w-]+\.[\w]{1,})$');
    Match match = regex.firstMatch(path);
    if (match != null && match.groupCount == 1) return match.group(1);
    return '';
  }

  String getFileExtension(String path){
    RegExp regex = RegExp(r'\.([A-Za-z0-9]+)$');
    Match match = regex.firstMatch(path);
    if (match != null && match.groupCount == 1) return match.group(1);
    return '';
  }
}