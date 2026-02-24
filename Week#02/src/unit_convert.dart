//import library dart
import 'dart:io';

//void main untuk wadah kode
void main() {

  //Map bertingkat untuk menyimpan faktor konversi tiap kategori dan unit
  final Map<String, Map<String, double>> faktorKonversi = {
    'Panjang': {'km': 1000, 'm': 1, 'cm': 0.01, 'mm': 0.001, 'inch': 0.0254},
    'Massa': {'kg': 1000, 'g': 1, 'mg': 0.001, 'lb': 453.59, 'oz': 28.35},
    'Volume': {'m3': 1000, 'L': 1, 'ml': 0.001, 'gallon': 3.785, 'cup': 0.24},
  };

  //print judul dan menu kategori
  print('=== Aplikasi Konversi Unit ===');
  print('1. Panjang\n2. Massa\n3. Volume\n4. Suhu');

  //stdout.write agar input berada di baris yang sama
  stdout.write('Pilih kategori (1-4): ');
  String? pilihan = stdin.readLineSync();

  //jika memilih suhu maka langsung panggil fungsi konversiSuhu
  if (pilihan == '4') {
    konversiSuhu();

  //jika memilih panjang massa atau volume maka tentukan nama kategori dengan operator ternary
  //lalu kirim Map unit ke fungsi prosesKonversi
  } else if (pilihan != null && ['1', '2', '3'].contains(pilihan)) {
    String kategori = pilihan == '1' ? 'Panjang' : pilihan == '2' ? 'Massa' : 'Volume';
    prosesKonversi(kategori, faktorKonversi[kategori]!);

  //jika input tidak sesuai menu
  } else {
    print('Pilihan tidak valid.');
  }
}

//fungsi untuk memproses konversi panjang massa dan volume
void prosesKonversi(String namaKategori, Map<String, double> unitMap) {

  //menampilkan unit yang tersedia dari Map dalam satu baris yang dipisah dengan koma
  print('\nUnit tersedia: ${unitMap.keys.join(', ')}');

  //input nilai yang akan dikonversi
  stdout.write('Masukkan nilai: ');
  double nilai = double.parse(stdin.readLineSync()!);

  //validasi agar nilai massa dan volume tidak negatif
  if (nilai < 0 && (namaKategori == 'Massa' || namaKategori == 'Volume')) {
    print('Error: Nilai untuk $namaKategori tidak boleh negatif!');
    return;
  }

  //input unit asal dan tujuan
  stdout.write('Dari unit: ');
  String dari = stdin.readLineSync()!;
  stdout.write('Ke unit: ');
  String ke = stdin.readLineSync()!;

  //cek apakah unit ada di dalam Map memakai kata kunci dari dan ke
  if (unitMap.containsKey(dari) && unitMap.containsKey(ke)) {

    //var hasil nilainya dari rumus konversi menggunakan perkalian dan pembagian faktor Map
    double hasil = nilai * unitMap[dari]! / unitMap[ke]!;

    //menampilkan hasil dengan dua angka desimal
    print('\nHasil: $nilai $dari = ${hasil.toStringAsFixed(2)} $ke');

  } else {
    print('Unit tidak ditemukan.');
  }
}

//fungsi khusus untuk konversi suhu dari Celsius ke beberapa skala
void konversiSuhu() {

  //input suhu dalam Celsius
  stdout.write('\nMasukkan suhu dalam Celsius: ');
  double c = double.parse(stdin.readLineSync()!);

  //rumus konversi suhu menggunakan operator aritmatika
  print('Fahrenheit: ${(c * 9/5) + 32}');
  print('Kelvin: ${c + 273.15}');
  print('Reamur: ${c * 4/5}');
  //Dibatasi 3 angka dibelakang koma karena desimalnya yang paling banyak angkanya
  print('Rankine: ${((c + 273.15) * 9/5).toStringAsFixed(3)}');
}