PEMROGRAMAN MOBILE - PERTEMUAN 1 - 11 FEBRUARI 2026

NAMA: FAJAR KURNIA PUTRA
KELAS: SIB 2F
ABSEN: 10
NIM: 244107060074

A. Judul Aplikasi
Eling. Alasan pemberian nama seperti ini karena Eling dalam bahasa jawa artinya baru sadar, dan aplikasi ini adalah solusi orang-orang pelupa termasuk saya untuk mengingat hal penting yang akan dikerjakan nantinya.

B. Deskripsi Singkat
Eling adalah aplikasi manajemen tugas berbasis mobile yang berfungsi membantu pengelolaan aktivitas pengguna. Aplikasi ini memungkinkan pengguna membuat, mengatur, memantau. dan mengingatkan tugas harian secara terstruktur. Dengan aplikasi ini diharapkan dapat membantu orang-orang pelupa terhadap hal-hal penting yang harus dikerjakan nantinya. Misalnya aja pengingat tugas sekolah, rapat kantor, atau sekedar gaya hidup seperti pengingat minum air putih atau beribadah misalnya.

C. Target Pengguna
- Pelajar seluruh jenjang pendidikan dengan banyak deadline tugas
- Pekerja yang membutuhkan pengingat tugas
- Manusia yang ingin hidup lebih disiplin

D. Fitur Utama Aplikasi
1. Autentikasi
- Login menggunakan Google melalui Firebase Auth
- Data tugas tersimpan berdasarkan akun pengguna

2. Manajemen Tugas
- Tambah, edit, hapus tugas
- Tentukan deadline dan waktu, bisa looping setiap hari, setiap minggu, setiap bulan, atau setiap tahun.
- Atur prioritas
- Tandai tugas selesai
- Statistik jumlah dan progres tugas

3. Sinkronisasi Google Calendar
- Opsi aktifkan sinkronisasi per tugas
- Kirim event ke Google Calendar melalui API
- Simpan googleEventId di Firestore
- Update dan hapus event jika tugas berubah

4. Quote Motivasi Harian
- Ambil data dari API publik
- Tampilkan quote-quote kepada pengguna
- Simpan cache lokal untuk penggunaan offline

E. Rencana API
1. Firebase
- Aktifkan Firebase Auth untuk login Google
- Gunakan Firestore sebagai database utama
- Simpan semua task berdasarkan uid user

2. Google Calendar API
- Aktifkan Google Calendar API
- Kirim task ke Google jika syncEnabled aktif
- Simpan googleEventId untuk update dan delete

3. Quote API
- Ambil quote harian dengan HTTP GET
- Parsing JSON
- Simpan cache lokal
- Tampilkan ragam quote