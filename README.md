Tentu! Ini saya rapihkan lagi agar lebih profesional dan konsisten untuk README GitHub kamu:

---

# Sistem Pakar Identifikasi Hama Tanaman

## Gambaran Umum
Sistem pakar ini dirancang untuk mengidentifikasi hama tanaman berdasarkan gejala yang diamati. Tersedia dalam dua versi: **Prolog** dan **Python**, dengan logika yang sama namun implementasi yang berbeda.

## Fitur Utama
- Mengidentifikasi 4 jenis hama tanaman:
  - **Kutu Daun (Aphids)**
  - **Ulat Grayak (Armyworm)**
  - **Tungau (Spider Mite)**
  - **Kumbang (Beetle)**
- Memberikan solusi penanganan untuk setiap jenis hama.
- Menangani kasus ketika gejala tidak cocok dengan hama yang dikenal.

## Alur Kerja Sistem
1. **Input Data:** Pengguna menjawab pertanyaan tentang gejala tanaman (ya/tidak).
2. **Konversi Jawaban:** Jawaban dikonversi menjadi fakta dalam basis pengetahuan.
3. **Pencocokan Aturan:** Sistem mencocokkan gejala dengan aturan yang ada.
4. **Inferensi:** Menggunakan teknik *forward chaining* untuk menarik kesimpulan.
5. **Output:** Menampilkan hasil identifikasi beserta solusi penanganan.

## Struktur Kode

### Versi Prolog (`Prolog_Identifikasi_Hama.pl`)
- Basis pengetahuan berbasis fakta dan aturan.
- Predikat utama:
  - `hama/1`: Aturan identifikasi hama.
  - `identifikasi_hama/0`: Proses identifikasi utama.
  - `tanya_gejala/1`: Fungsi untuk meminta input gejala dari pengguna.
  - `mulai/0`: Predikat untuk memulai sistem.

### Versi Python (`sistem_pakar_hama.py`)
- Menggunakan library **Experta** untuk membangun sistem pakar.
- Kelas utama:
  - `HamaTanaman`: Berisi aturan-aturan identifikasi hama.
- Fungsi bantu:
  - `get_input()`: Mengumpulkan input gejala dari pengguna.
- Logika eksekusi utama terdapat pada blok `__main__`.

## Cara Menjalankan

### Versi Prolog
1. Buka interpreter Prolog (misalnya SWI-Prolog).
2. Konsultasikan file `Prolog_Identifikasi_Hama.pl`.
3. Jalankan predikat `mulai.`.
4. Jawab pertanyaan yang muncul.

### Versi Python
1. Pastikan Python 3.x sudah terinstal.
2. Install dependensi:
   ```bash
   pip install experta frozendict
   ```
3. Jalankan file:
   ```bash
   python sistem_pakar_hama.py
   ```
4. Jawab pertanyaan yang muncul.

## Contoh Penggunaan

```text
=== Sistem Pakar Identifikasi Hama Tanaman ===
Silakan jawab pertanyaan berikut dengan 'ya' atau 'tidak'.

Masukkan gejala yang diamati pada tanaman:
Apakah daun menguning? (ya/tidak): ya
Apakah terdapat bercak hitam pada daun? (ya/tidak): ya
Apakah daun berlubang? (ya/tidak): tidak
Apakah tanaman layu? (ya/tidak): tidak

Hama yang teridentifikasi: Kutu Daun (Aphids)
Solusi: Gunakan insektisida sistemik atau semprot dengan air sabun.
```

---
