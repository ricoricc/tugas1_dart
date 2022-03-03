import 'dart:io';

void printDiamond(int n) {
  print("*");
}

void printTriangle(int n) {
  int varL = 1;
  int varR = n;
  if (n > 9) {
    varR = 9;
  }
  int space = 0;
  int size = n;
  int c = n;
  if (c > 9) {
    c = 9;
  }

  for (int i = 0; i < n; i++) {
    //print left variables
    for (int i = 0; i < size; i++) {
      stdout.write(varL);
      varL++;

      if (varL > c) {
        varL = 1;
      }
    }

    //to crate space
    for (int i = 0; i < space; i++) {
      stdout.write(" ");
    }

    //print right variables
    for (int i = 0; i < size; i++) {
      stdout.write(varR);
      varR--;

      if (varR < 1) {
        varR = c;
      }
    }

    if (varL == c) {
      varL = 1;
    }
    if (varR == 1) {
      varR = c;
    }
    stdout.write("\n");
    space += 2;
    size--;
  }
}

void main(List<String> arguments) {
  stdout.write("Masukan angka: ");
  String? inputData = stdin.readLineSync();
  int n = int.parse(inputData!);

  //printDiamond(n);
  printTriangle(n);
}
