//import library dart
import 'dart:io';

//void main untuk wadah kode
void main() {
  //print untuk ouput teks di console
  print('=== Program Penghitung BMI ===');
  
  //stdout.write fungsinya sama seperti print namun ditujukan agar input pengguna ada di baris teks yang sama.
  stdout.write('Masukkan berat badan (kg): ');
  // Tipe data double untuk angka desimal
  //double.parse untuk mengonversi string ke double dari yang dinputkan
  //stdin.readLineSync() untuk mengambil inputan dari pengguna dan tidak null karena ada !
  double berat = double.parse(stdin.readLineSync()!);
  
  stdout.write('Masukkan tinggi badan (cm): ');
  double tinggiCm = double.parse(stdin.readLineSync()!);
  
  // var tinggiM untuk simpan hasil konversi tinggi yang semula cm ke meter
  double tinggiM = tinggiCm / 100;
  
  // var bmi untuk sim[pan hasil penghitungan BMI dengan operator perkalian dan pembagian
  double bmi = berat / (tinggiM * tinggiM);
  
  // Menampilkan ouput String dengan mengambil tambahan 2 angka dibelakang koma 
  print('\nSkor BMI Anda: ${bmi.toStringAsFixed(2)}');
  
  // Menentukan kategori menggunakan operator relasional
  if (bmi < 18.5) {
    print('Kategori: Kurus');
  //&& ini untuk and, jadi hanya sesama true yang dinilai true, jika salah satu false maka false
  } else if (bmi >= 18.5 && bmi < 22.9) {
    print('Kategori: Normal');
  } else if (bmi >= 23 && bmi < 30) {
    print('Kategori: Kelebihan Berat Badan');
  } else {
    print('Kategori: Obesitas');
  }
}