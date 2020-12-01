void main() {
  String str = 'fhsadfasd     ';
  print(str);
  str = replaceSpaces(str, 20);
  print(str);
}

String replaceSpaces(String str, int trueLength) {
  var buffer = StringBuffer();
  for (var i = 0; i < str.length; i++) {
    if (str[i] == ' ') {
      buffer.write('%20');
    } else {
      buffer.write(str[i]);
    }
  }
  return buffer.toString();
}
