import 'dart:io';

void main() {
  print('Enter string to be checked:');
  String string = stdin.readLineSync();
  print('Checking if string has all unique ASCII characters...');
  print('It does ${isUnique(string) ? '' : 'not'}');
}

bool isUnique(String string) {
  if (string.length > 128) return false;
  var characterList = List<bool>.filled(128, false);
  for (var i = 0; i < string.length; i++) {
    var characterValue = string.codeUnitAt(i);
    if (characterList[characterValue]) {
      return false;
    }
    characterList[characterValue] = true;
  }
  return true;
}
