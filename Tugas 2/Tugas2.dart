import 'dart:io';

int tambah(int x, int y) => x + y;
int kurang(int x, int y) => x - y;
int kali(int x, int y) => x * y;
int bagi(int x, int y) {
  if (y == 0) {
    print("Pembagian dengan nol tidak diperbolehkan!");
    return 0;
  }
  return x ~/ y; 
}
int modulus(int x, int y) {
  if (y == 0) {
    print("Modulus dengan nol tidak diperbolehkan!");
    return 0;
  }
  return x % y;
}

void main() {
  stdout.write("Masukkan angka pertama: ");
  int x = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka kedua: ");
  int y = int.parse(stdin.readLineSync()!);

  stdout.write("Pilih operasi (+, -, *, /, %): ");
  String operator = stdin.readLineSync()!;

  int hasil;

  if (operator == '+') {
    hasil = tambah(x, y);
  } else if (operator == '-') {
    hasil = kurang(x, y);
  } else if (operator == '*') {
    hasil = kali(x, y);
  } else if (operator == '/') {
    hasil = bagi(x, y);
  } else if (operator == '%') {
    hasil = modulus(x, y);
  } else {
    print("Operator tidak dikenali!");
    return;
  }

  print("Hasil: $x $operator $y = $hasil");
}
