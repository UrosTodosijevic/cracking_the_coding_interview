/// 1.2 - str. 90 (102)
/// Check Permutation: Given two strings, write a method to decide if one is
/// a  permutation of the other.
/// Hints: #1, #84, #122, #131 - str. 653 (665)
/// Resenje str. 193 (205)

void main() {
  var str1 = '1234567890';
  var str2 = '0987654321';

  print(permutation(str1, str2));
}

bool permutation(String str1, String str2) {
  if (str1.length != str2.length) {
    return false;
  }
  for (var i = 0, j = str2.length - 1; i < j; i++, j--) {
    if (str1[i] != str2[j]) {
      return false;
    }
  }
  return true;
}
