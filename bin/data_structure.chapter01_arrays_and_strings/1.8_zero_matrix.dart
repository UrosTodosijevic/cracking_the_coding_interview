import 'dart:io';

import 'dart:math';

void main() {
  stdout.write('Enter n: ');
  var n = int.parse(stdin.readLineSync());
  stdout.write('Enter m: ');
  var m = int.parse(stdin.readLineSync());
  List<List<int>> matrix = generateMatrix(n, m);
  stdout.write('Generated matrix:\n');
  printMatrix(matrix, n, m);
  stdout.write('Transforming matrix...\n');
  setZeros(matrix, n, m);
  stdout.write('Transformed matrix:\n');
  printMatrix(matrix, n, m);
}

List<List<int>> generateMatrix(int n, int m) {
  var matrix = List.generate(n, (index) => <int>[]..length = m);
  var random = Random();

  for (var i = 0; i < n; i++) {
    for (var j = 0; j < m; j++) {
      matrix[i][j] = random.nextInt(10);
    }
  }

  return matrix;
}

void printMatrix(List<List<int>> matrix, int n, int m) {
  for (var i = 0; i < n; i++) {
    var currentRow = '';
    for (var j = 0; j < m; j++) {
      currentRow += '${matrix[i][j]}\t';
    }
    print(currentRow);
  }
}

void setZeros(List<List<int>> matrix, int n, int m) {
  var rowsToNullify = List<bool>.generate(n, (index) => false);
  var columnsToNullify = List<bool>.generate(m, (index) => false);

  for (var i = 0; i < n; i++) {
    for (var j = 0; j < m; j++) {
      if (matrix[i][j] == 0) {
        rowsToNullify[i] = true;
        columnsToNullify[j] = true;
      }
    }
  }

  for (var i = 0; i < n; i++) {
    if (rowsToNullify[i] == true) {
      nullifyRow(matrix, i, m);
    }
  }

  for (var i = 0; i < m; i++) {
    if (columnsToNullify[i] == true) {
      nullifyColumn(matrix, i, n);
    }
  }
}

void nullifyRow(List<List<int>> matrix, int rowIndex, int m) {
  for (var i = 0; i < m; i++) {
    matrix[rowIndex][i] = 0;
  }
}

void nullifyColumn(List<List<int>> matrix, int columnIndex, int n) {
  for (var i = 0; i < n; i++) {
    matrix[i][columnIndex] = 0;
  }
}
