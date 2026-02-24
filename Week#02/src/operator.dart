// ignore_for_file: dead_code, unnecessary_type_check

//void main untuk wadah kode
void main() {

  // variabel integer dengan nama yang deskriptif
  int angka1 = 10;
  int angka2 = 3;

  //print judul program
  print('=== OPERATOR DART ===\n');

  // Operator aritmatika untuk operasi matematika dasar
  // menggunakan string interpolation agar hasil jelas
  print('--- 1. Aritmatika ---');
  print('$angka1 + $angka2 = ${angka1 + angka2}');
  print('$angka1 - $angka2 = ${angka1 - angka2}');
  print('$angka1 * $angka2 = ${angka1 * angka2}');
  print('$angka1 / $angka2 = ${angka1 / angka2}');
  print('$angka1 ~/ $angka2 = ${angka1 ~/ angka2}');
  print('$angka1 % $angka2 = ${angka1 % angka2}');

  // Increment untuk menambah nilai variabel 1
  // Decrement untuk mengurangi nilai variabel 1
  print('\n--- 2. Increment & Decrement ---');
  print('Nilai awal angka1: $angka1');
  angka1++;
  print('Setelah angka1++: $angka1');

  print('Nilai awal angka2: $angka2');
  angka2--;
  print('Setelah angka2--: $angka2');

  // Operator relasional untuk membandingkan dua nilai
  print('\n--- 3. Relasional ---');
  print('$angka1 > $angka2  : ${angka1 > angka2}');
  print('$angka1 == $angka2 : ${angka1 == angka2}');
  print('$angka1 != $angka2 : ${angka1 != angka2}');

  // Operator logika menggunakan tipe data boolean
  // && untuk AND dan || untuk OR serta ! untuk NOT
  print('\n--- 4. Logika ---');
  bool isProgrammer = true;
  bool isLazy = false;
  print('Programmer AND Rajin (true && !false): ${isProgrammer && !isLazy}');
  print('Programmer OR Malas   (true || false) : ${isProgrammer || isLazy}');

  // Operator assignment untuk mengubah nilai variabel
  print('\n--- 5. Assignment ---');
  int c = 20;
  print('Nilai awal c: $c');
  c += 5;
  print('c += 5  : $c');
  c *= 2;
  print('c *= 2  : $c');

  // Operator ternary sebagai pengganti if else sederhana
  print('\n--- 6. Ternary ---');
  String status = (angka1 > angka2) ? 'Angka1 Lebih Besar' : 'Angka2 Lebih Besar';
  print('Status: $status');

  // Null aware operator untuk memberi nilai default jika null
  print('\n--- 7. Null-aware ---');
  String? username;
  print('Halo, ${username ?? 'Tamu'}!');

  // Type test operator untuk mengecek tipe data
  print('\n--- 8. Type Test ---');
  print('Apakah angka1 adalah int? ${angka1 is int}');
  print('Apakah "Dart" bukan double? ${"Dart" is! double}');

  // Bitwise operator untuk operasi biner pada bilangan
  print('\n--- 9. Bitwise ---');
  int x = 5;
  int y = 3;
  print('$x & $y (AND) : ${x & y}');
  print('$x | $y (OR)  : ${x | y}');
  print('$x ^ $y (XOR) : ${x ^ y}');
}