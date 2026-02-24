//import library dart
import 'dart:io';

//void main untuk wadah kode
void main() {

  //const untuk nilai tetap kurs mata uang
  const double usdToIdr = 16800;
  const double eurToIdr = 19800;

  //stdout.write agar input tetap di baris yang sama dengan teks
  stdout.write('Masukkan jumlah uang: ');
  //double.parse untuk mengubah input string menjadi double
  //stdin.readLineSync() untuk mengambil input pengguna
  final double jumlah = double.parse(stdin.readLineSync()!);

  //input mata uang asal lalu diubah ke huruf besar agar konsisten saat dibandingkan
  stdout.write('Dari mata uang (USD/EUR/IDR): ');
  final String dari = stdin.readLineSync()!.toUpperCase();

  //input mata uang tujuan
  stdout.write('Ke mata uang (USD/EUR/IDR): ');
  final String ke = stdin.readLineSync()!.toUpperCase();

  //var hasil untuk menyimpan nilai konversi dengan nilai awal jumlah
  double hasil = jumlah;

  //percabangan untuk menentukan rumus konversi berdasarkan mata uang asal dan tujuan
  //operator && digunakan untuk memastikan kedua kondisi benar
  if (dari == 'USD' && ke == 'IDR') {
    //perkalian karena konversi ke rupiah
    hasil = jumlah * usdToIdr;
  } else if (dari == 'IDR' && ke == 'USD') {
    //pembagian karena konversi dari rupiah
    hasil = jumlah / usdToIdr;
  } else if (dari == 'EUR' && ke == 'IDR') {
    hasil = jumlah * eurToIdr;
  } else if (dari == 'IDR' && ke == 'EUR') {
    hasil = jumlah / eurToIdr;
  } else if (dari == 'USD' && ke == 'EUR') {
    //konversi silang menggunakan dua kurs
    hasil = jumlah * usdToIdr / eurToIdr;
  } else if (dari == 'EUR' && ke == 'USD') {
    hasil = jumlah * eurToIdr / usdToIdr;
  }

  //menampilkan hasil dengan dua angka di belakang koma
  print('Hasil konversi: ${hasil.toStringAsFixed(2)} $ke');
}