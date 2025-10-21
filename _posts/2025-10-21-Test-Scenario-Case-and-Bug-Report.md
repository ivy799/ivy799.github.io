---
layout: post
title: "Panduan Dokumen Pengujian: Test Scenario, Test Case, dan Bug Report"
date: 2025-10-21
categories: SoftwareEngineering Testing
---

# Panduan Dokumen Pengujian: Test Scenario, Test Case, dan Bug Report

Dalam proses pengujian perangkat lunak, berbagai kegiatan dilakukan untuk meningkatkan kualitas produk, salah satunya adalah menyiapkan dokumen-dokumen penunjang. Tiga elemen penting yang saling melengkapi adalah **Test Scenario**, **Test Case**, dan **Bug Report**. Ketiga dokumen ini adalah fondasi untuk memastikan aplikasi berjalan sesuai harapan dan bebas dari kesalahan.

Dokumen pengujian lain yang juga penting dalam siklus ini meliputi **User Story** (deskripsi kebutuhan dari sisi pengguna), **Test Plan** (dokumen perencanaan pengujian), dan **Test Reporting** (laporan hasil akhir pengujian).

---

## 1. Test Scenario (Skenario Pengujian)

Test Scenario adalah dokumen yang memberikan gambaran umum tingkat tinggi tentang **apa yang harus diuji**. Ini adalah deskripsi fungsionalitas yang akan dievaluasi untuk memastikan aplikasi sesuai dengan kebutuhan, dan biasanya mengacu pada *User Story* yang ada.

Sederhananya, Test Scenario menjawab pertanyaan, "Apa yang akan kita uji dari fitur ini?"

### Template Test Scenario

Template sederhana untuk skenario pengujian biasanya berisi:

| Field | Keterangan |
| :--- | :--- |
| **ID Scenario** | Nomor unik untuk skenario tersebut. |
| **Deskripsi** | Ringkasan singkat tentang skenario pengujian. |
| **Modul/Fitur** | Nama modul atau fitur yang sedang diuji. |

---

## 2. Test Case (Kasus Uji)

**Test Case** adalah dokumen yang jauh lebih rinci yang menjelaskan **bagaimana sebuah pengujian akan dilakukan**. Ini adalah serangkaian tindakan yang ditetapkan untuk memverifikasi fungsionalitas atau fitur tertentu dari aplikasi perangkat lunak.

Dokumen ini menggambarkan input, tindakan, kondisi awal (*precondition*), kondisi akhir (*postcondition*), dan respons yang diharapkan (*Expected Result*) untuk menentukan apakah suatu fitur bekerja dengan benar.

### Template Test Case

Template sederhana untuk kasus uji biasanya mencakup komponen-komponen berikut:

| Field | Keterangan |
| :--- | :--- |
| **ID Test Case** | Nomor unik untuk kasus uji. Sebaiknya mudah diidentifikasi untuk pelacakan. |
| **Deskripsi** | Ringkasan singkat tentang unit, fitur, atau fungsi apa yang diuji. |
| **Precondition** | Kondisi atau asumsi yang harus terpenuhi *sebelum* pengujian dimulai. |
| **Test Steps** | Langkah-langkah detail untuk melakukan pengujian, ditulis dari perspektif pengguna akhir. |
| **Test Data** | Data dan variabel spesifik yang digunakan untuk pengujian (input). |
| **Expected Result** | Hasil yang diharapkan sesuai dengan kebutuhan atau spesifikasi setelah langkah pengujian dieksekusi. |
| **Actual Result** | Hasil aktual yang muncul setelah pengujian dilakukan. |
| **Status** | Status lulus (Pass) atau gagal (Fail), tergantung perbandingan *Expected* vs *Actual Result*. |
| **Post-condition** | Kondisi sistem *setelah* pengujian selesai (misal: "Pengguna berhasil login"). |

### Praktik Terbaik Menulis Test Case

* **Sederhana dan Transparan:** Gunakan bahasa yang sederhana dan jelas (misal: "Klik tombol Home").
* **Berfokus pada Pengguna Akhir:** Buat kasus uji dengan mempertimbangkan perspektif pengguna.
* **Hindari Pengulangan:** Jika sebuah test case (misal: Login) diperlukan untuk test case lain, cukup panggil ID test case tersebut di kolom *Precondition*.
* **Sesuai Spesifikasi:** Jangan berasumsi. Selalu berpegang pada dokumen spesifikasi atau *requirements*.
* **Cakupan 100%:** Pastikan Anda menulis test case untuk semua persyaratan perangkat lunak yang disebutkan dalam dokumen spesifikasi.
* **Dapatkan Tinjauan (Review):** Minta rekan kerja (Tester atau Developer) untuk meninjau test case Anda untuk memastikan kejelasan dan kelengkapannya.

---

## Studi Kasus: Aplikasi Kalkulator BMI

Berikut adalah contoh penerapan Test Scenario dan Test Case untuk aplikasi penghitung Body Mass Index (BMI).

### Test Scenarios (Aplikasi BMI)

| ID Scenario | Deskripsi | Modul/Fitur yang diuji |
| :--- | :--- | :--- |
| **TS001** | Periksa fungsi slider input | Slider input berat dan tinggi badan |
| **TS002** | Periksa hasil perhitungan dan klasifikasi BMI | Perhitungan dan klasifikasi BMI |
| **TS003** | Periksa fungsi penyimpanan history BMI | History BMI |

### Test Cases untuk Skenario TS002 (Perhitungan BMI)

| ID Test Case | Deskripsi | Precondition | Test Steps | Test Data | Expected Result |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **TC003** | Verifikasi hasil perhitungan BMI sesuai rumus standar $(kg/m^2)$ | Aplikasi terbuka | 1. Masukkan tinggi 170cm 2. Masukkan berat 65kg | Tinggi = 170, Berat = 65 | Hasil Perhitungan BMI sesuai dengan rumus standar $(kg/m^2)$ yaitu 22.49. |
| **TC004** | Verifikasi Hasil Kategori Underweight | Aplikasi terbuka | 1. Masukkan tinggi 170cm 2. Masukkan berat 45kg | Tinggi = 170, Berat = 45 | Hasil menunjukkan BMI = 15.6 dan menampilkan kategori "Underweight". |
| **TC005** | Verifikasi Hasil Kategori Normal | Aplikasi terbuka | 1. Masukkan tinggi 165cm 2. Masukkan berat 60kg | Tinggi = 165, Berat = 60 | Hasil menunjukkan BMI $\approx$ 22.04 dan menampilkan kategori "Normal". |
| **TC006** | Verifikasi Hasil Kategori Overweight | Aplikasi terbuka | 1. Masukkan tinggi 170cm 2. Masukkan berat 75kg | Tinggi = 170, Berat = 75 | Hasil menunjukkan BMI $\approx$ 25.95 dan menampilkan kategori "Overweight". |
| **TC007** | Verifikasi Hasil Kategori Obese | Aplikasi terbuka | 1. Masukkan tinggi 165cm 2. Masukkan berat 90kg | Tinggi = 165, Berat = 90 | Hasil menunjukkan BMI $\approx$ 33.06 dan menampilkan kategori "Obese". |

---

## 3. Bug Report (Laporan Bug)

Ketika hasil aktual dari sebuah Test Case tidak sesuai dengan hasil yang diharapkan (*Actual Result* vs *Expected Result*), maka ditemukanlah sebuah **bug** atau cacat.

**Bug Report** adalah laporan formal yang mendokumentasikan kesalahan atau masalah yang ditemukan pada sistem. Laporan ini sangat penting bagi tim pengembang (developer) untuk memahami masalah, mereproduksi, dan memperbaikinya. Ini adalah bagian dari **Test Reporting**, yang menjadi acuan bagi Tech Lead atau Project Manager untuk mengambil keputusan.

### Cara Menulis Bug Report yang Baik

Laporan bug yang baik meningkatkan peluang bug tersebut untuk diperbaiki.

* **Spesifik:** Langsung ke intinya. Jangan menulis hal-hal yang tidak perlu.
* **Informatif:** Berikan nomor identifikasi unik untuk setiap bug agar mudah dilacak.
* **Dapat Direproduksi (Reproducible):** Jika bug tidak dapat direproduksi, bug tersebut tidak dapat diperbaiki. Jelaskan langkah-langkahnya secara rinci.
* **Jelas:** Tulis dengan bahasa yang sederhana dan mudah dimengerti. Baca ulang laporan Anda sebelum mengirimkannya.
* **Uji pada Modul Serupa:** Developer mungkin menggunakan kode yang sama untuk modul serupa. Periksa apakah bug tersebut juga muncul di bagian lain dari aplikasi.

### Komponen Kunci Bug Report

Laporan bug yang efektif biasanya mencakup komponen-komponen berikut:

* **Tester:** Nama dan email pelapor (Tester/QA).
* **Product & Version:** Nama produk dan versi di mana bug ditemukan.
* **Component:** Sub-modul utama dari produk (misal: "Login", "Checkout").
* **Platform & Operating System:** Perangkat keras (PC, MAC) dan sistem operasi (Windows 11, Android 13) tempat bug ditemukan, karena bug bisa berbeda di lingkungan yang berbeda.
* **Bug Severity (Tingkat Keparahan):** Mengukur dampak bug pada fungsionalitas.
  * **Blocker:** Menghalangi pengujian lebih lanjut pada fungsionalitas tersebut.
  * **Critical:** Menyebabkan kegagalan total pada sistem atau fungsionalitas utama.
  * **Major (High):** Menyebabkan fungsionalitas utama tidak bekerja dengan benar, tetapi sistem tidak *crash*.
  * **Minor (Medium):** Tidak memengaruhi fungsionalitas utama, tetapi menyebabkan ketidaknyamanan.
  * **Low:** Bug kosmetik (visual) atau minor yang tidak memengaruhi fungsi.
* **Bug Priority (Tingkat Prioritas):** Menentukan seberapa mendesak bug harus diperbaiki, biasanya ditetapkan dalam format P1-P4.
  * **P1 (Urgent/Critical):** Harus segera diperbaiki karena menghalangi fungsionalitas inti.
  * **P2 (High):** Bug penting yang harus diperbaiki secepatnya karena memengaruhi banyak pengguna.
  * **P3 (Medium):** Bug yang bisa diperbaiki di siklus rilis berikutnya.
  * **P4 (Low):** Bug minor atau kosmetik yang bisa diperbaiki kapan saja.
* **Bug Status:** Status bug saat ini (misal: New, Assigned, Fixed, Verified, Reopen, Cannot Fix).
* **Assign to:** Nama atau email developer yang ditugaskan untuk memperbaiki bug.
* **Describe the Issue (Judul Bug):** Deskripsi singkat yang jelas tentang bug.
* **Steps to Reproduce:** Langkah-langkah rinci untuk mereproduksi bug.
* **Actual Result:** Perilaku salah yang terjadi.
* **Expected Result:** Perilaku yang seharusnya terjadi.
* **Attachments:** (Opsional) Screenshot, video, atau log yang dapat membantu developer.

### Contoh Format Bug Report (Aplikasi Kalkulator BMI)

Berikut adalah contoh laporan bug berdasarkan skenario pengujian aplikasi BMI, di mana terjadi kesalahan perhitungan:

| Field | Keterangan |
| :--- | :--- |
| **Bug Title** | Perhitungan BMI salah saat input berat 60kg dan tinggi 170cm |
| **Bug ID** | BMI-001 |
| **Product** | Aplikasi Kalkulator BMI |
| **Version** | Version 1.0.0 |
| **Platform** | Android |
| **Operating System** | Android 13 |
| **Severity** | Major (High) |
| **Priority** | P2 - High |
| **Status** | New |
| **Assignee** | Developer Lead |
| **Reporter** | SQA (Software Quality Assurance) |
| **Step to Reproduce** | 1. Buka aplikasi BMI 2. Masukkan Berat = 60 3. Masukkan Tinggi = 170 4. Klik tombol "Hitung" |
| **Actual Result** | Hasil BMI = 12.5 |
| **Expected Result** | Hasil BMI seharusnya $\approx$ 20.8 |

---

## Cara Menghindari Bug

Cara terbaik untuk menghindari bug adalah dengan menerapkan praktik terbaik di seluruh siklus pengembangan, tidak hanya saat pengujian. Beberapa praktik tersebut meliputi:

* **Pahami Persyaratan:** Pastikan semua persyaratan (seperti User Story) dipahami dengan jelas oleh seluruh tim.
* **Unit Testing:** Lakukan pengujian unit untuk mendeteksi bug di tahap awal pengembangan.
* **Code Review:** Minta pengembang lain meninjau kode untuk menemukan kesalahan.
* **Rencana Pengujian:** Buat *Test Plan* yang komprehensif.
* **Pengujian Otomatis:** Manfaatkan *automation testing* untuk deteksi bug yang lebih cepat, terutama untuk pengujian regresi.
* **Kolaborasi Tim:** Tingkatkan komunikasi dan kolaborasi yang erat antara pengembang dan penguji.

## Sumber

* Presentasi "Test Scenario, Test Case and Bug Report" oleh Kelompok 4
* Purba, Arijona. (2022). "Memahami tentang dokumen testing (user story, test scenario, test case, test reporting, dan test plan)". *Medium*.
* Veerappan, Keerthi. "How To Write Test Cases And Bug Reports & What Are Its Main Components". *Zuci Systems*.
