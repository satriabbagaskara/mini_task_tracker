# Mini Task Tracker

- **Nama:** Satria Bisma Bagaskara
- **NIM:** 103012500110
- **Jurusan/Prodi:** S1 Informatika

Aplikasi pencatat tugas harian (*to-do list*) sederhana berbasis **Flutter** yang dibuat untuk memenuhi studi kasus pengembangan aplikasi mobile. Aplikasi ini mengelola daftar catatan secara dinamis di memori lokal menggunakan `StatefulWidget` dan `setState()`.

## Fitur Utama

- **Tambah Tugas**: Menambahkan item tugas baru ke dalam daftar dengan validasi input (`.trim()`) sehingga teks kosong atau spasi saja tidak tersimpan.
- **Tandai Selesai**: Menandai tugas yang telah dikerjakan menggunakan `Checkbox`, yang secara otomatis memberikan efek coret (*strikethrough*) pada teks judul tugas.
- **Hapus Tugas**: Menghapus item tugas tertentu dari daftar melalui tombol ikon hapus.
- **Antarmuka Dinamis**: Menampilkan pesan informasi otomatis saat daftar tugas masih dalam keadaan kosong.

## Tampilan Aplikasi

| Tampilan Awal | Tambah Tugas | Tandai Selesai | Hapus Tugas |
| :---: | :---: | :---: | :---: |
| ![Tampilan Awal](screenshot/1_kosong.png) | ![Tambah Tugas](screenshot/2_tambah.png) | ![Tandai Selesai](screenshot/3_selesai.png) | ![Hapus Tugas](screenshot/4_hapus.png) |

## Struktur Kode & Teknologi

- **Framework**: Flutter (Material Design 3)
- **Bahasa Pemrograman**: Dart
- **Manajemen State**: Local State (`StatefulWidget` & `setState`)
- **Arsitektur File (`lib/main.dart`)**:
  - `class Task`: Model struktur data untuk merepresentasikan satu item tugas (`String title` dan `bool isDone`).
  - `class MyApp` & `_MyAppState`: Mengelola antarmuka utama (`MaterialApp` & `Scaffold`), penyimpanan daftar tugas (`List<Task>`), pembaca input (`TextEditingController`), serta logika manipulasi data (`_addTask`, `_toggleTaskDone`, dan `_deleteTask`).

## Cara Menjalankan Proyek

1. **Clone repositori ini:**
   ```bash
   git clone https://github.com/satriabbagaskara/mini_task_tracker.git
   cd mini_task_tracker
   ```

2. **Unduh depedensi proyek & jalankan aplikasi di emulator/android:**
    - flutter pub get
    - flutter run

### Deklarasi Penggunaan AI
- Apakah menggunakan AI? Ya
- Tool AI yang digunakan: Google Gemini
- Estimasi persentase kontribusi AI: ± 35%
- Bagian kode/fitur yang dibantu AI: 
  1. Bertukar ide tentang alur kerja Flutter lewat AI sambil menonton video panduan Flutter di YouTube sebelum mengerjakan study case.
  2. Memperbaiki error yang ada pada baris input tugas, spesifiknya ada di baris 69 - 79
  3. Memperbaiki error yang ada pada area daftar tugas, spesifiknya ada pada baris 96 - 120
- Pernyataan: 
  Saya menyatakan bahwa saya memahami alur dan fungsi dari seluruh kode yang ada dalam repositori ini
