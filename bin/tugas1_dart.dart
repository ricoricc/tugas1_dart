import 'dart:io';

void printDiamond(int n) {
  int varA = 1;
  int varB = 1;
  int varC;
  int c = 0;
  for (double i = n / 2 - 1; i > 0; i--) {
    c = 0;
    //print left
    for (double j = i; j > 0; j--) {
      stdout.write("*");
    }
    for (double k = 0; k < varB; k++) {
      if (c == 0) {
        if (varA > 9) {
          varA = 1;
        }
        stdout.write(varA);
        c = 1;
      } else if (k != varB - 1 && c == 1) {
        stdout.write(" ");
        c = 0;
      }
    }

    //print right
    for (double n = 0; n < varB; n++) {
      if (c == 0) {
        if (varA > 9) {
          varA = 1;
        }
        stdout.write(varA);
        c = 1;
      } else if (n != varB - 1 && c == 1) {
        stdout.write(" ");
        c = 0;
      }
    }
    for (double m = i; m > 0; m--) {
      stdout.write("*");
    }

    if (varB > n) {
      varB = 1;
    }
    varA++;
    varB++;
    // if (varA > 9) {
    //   varB = varA;
    //   varA = 1;
    // }
    stdout.write("\n");
  }

  varC = varB;

  for (double i = 0; i < n / 2; i++) {
    c = 0;
    //print left
    for (double j = 0; j < i; j++) {
      stdout.write("*");
    }

    for (int k = varC; k > 0; k--) {
      if (c == 0) {
        stdout.write(varA);
        c = 1;
      } else if (k != varA - 1 && c == 1) {
        stdout.write(" ");
        c = 0;
      }
    }

    //print right
    for (int l = varC; l > 0; l--) {
      if (c == 0) {
        stdout.write(varA);
        c = 1;
      } else if (l != 1 && c == 1) {
        stdout.write(" ");
        c = 0;
      }
    }

    for (double m = i; m > 0; m--) {
      stdout.write("*");
    }

    if (varA > n) {
      varA = 1;
    }
    varC--;
    varA++;
    if (varA > 9) {
      varA = 1;
    }
    stdout.write("\n");
  }
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

  // //ASCII
  // int j = stdin.readByteSync();

  print("N= $n");
  printDiamond(n);
  print("");
  print("N= $n");
  printTriangle(n);
}
