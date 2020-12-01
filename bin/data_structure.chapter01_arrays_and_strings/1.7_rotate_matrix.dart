import 'dart:io';

void main() {
  print('Enter the N for NxN matrix:');
  var n = int.parse(stdin.readLineSync());
  var matrix = writeSnailMatrix(n);
  printMatrix(matrix, n);
}

void rotateMatrix(List<List<int>> matrix) {}

List<List<int>> writeSnailMatrix(int n) {
  var matrix = List.generate(n, (index) => List<int>(n));
  var numberOfElements = n * n;
  var number = 1;

  var leftBorder = 0, topBorder = 0, rightBorder = n - 1, bottomBorder = n - 1;

  while (number <= numberOfElements) {
    for (var i = topBorder, j = leftBorder; j <= rightBorder; j++) {
      matrix[i][j] = number++;
    }
    topBorder++;
    for (var i = topBorder, j = rightBorder; i <= bottomBorder; i++) {
      matrix[i][j] = number++;
    }
    rightBorder--;
    for (var i = bottomBorder, j = rightBorder; j >= leftBorder; j--) {
      matrix[i][j] = number++;
    }
    bottomBorder--;
    for (var i = bottomBorder, j = leftBorder; i >= topBorder; i--) {
      matrix[i][j] = number++;
    }
    leftBorder++;
  }

  return matrix;
}

void printMatrix(List<List<int>> matrix, int n) {
  for (var i = 0; i < n; i++) {
    String currentRow ='';
    for (var j = 0; j < n; j++) {
      currentRow+='${matrix[i][j]}\t';
    }
    print(currentRow);
    //print('\n');
  }
}
