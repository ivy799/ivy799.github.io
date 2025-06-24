---
layout: post
title: "Pengenalan Association Rule dalam Machine Learning"
date: 2025-02-24
categories: MachineLearning Model
---

# Pengenalan Association Rule dalam Machine Learning

## Apa itu Association Rule?

Association rule learning adalah suatu teknik dalam data mining dan machine learning yang bertujuan untuk menemukan hubungan yang menarik, pola yang sering muncul, asosiasi, atau korelasi antara variabel dalam kumpulan data yang besar. Teknik ini paling umum digunakan dalam analisis data transaksional, seperti data penjualan atau transaksi pelanggan.

Tujuannya adalah untuk mengidentifikasi korelasi atau keterkaitan antara item atau variabel dalam dataset. Dalam konteks association rule learning, item atau variabel seringkali diasosiasikan dengan satu sama lain berdasarkan kemunculan bersama dalam suatu transaksi atau kejadian.

## Memahami Dasar-dasar Association Rule

Untuk menjelaskan association rule mining, kita dapat menggunakan contoh sederhana dari data transaksi toko kelontong. Contoh yang umum adalah Analisis Berbasis Pasar (Market Based Analysis).

Analisis Berbasis Pasar adalah salah satu teknik utama yang digunakan oleh relasi besar untuk menunjukkan asosiasi antar item. Ini memungkinkan pengecer untuk mengidentifikasi hubungan antara item yang sering dibeli orang bersama-sama. Dengan memberikan serangkaian transaksi, kita dapat menemukan aturan yang akan memprediksi kemunculan suatu item berdasarkan kemunculan item lain dalam transaksi.

![fig](https://miro.medium.com/v2/resize:fit:786/format:webp/1*rerqo9uCF2d2_Ebye3DLNg.png)

Dalam tabel ini, setiap baris mewakili transaksi (pembelian pelanggan), dan setiap transaksi memiliki ID unik. Kolom 'Items Purchased' mencantumkan item yang dibeli dalam transaksi tersebut.

## Konsep Itemset

**Itemset** adalah kumpulan satu atau lebih item yang ditemukan dalam dataset. Misalnya, pertimbangkan dataset yang berisi berbagai bahan makanan. Sebuah itemset bisa berupa kombinasi seperti {Keju, Tomat}.

**Panjang** itemset adalah jumlah item yang dikandungnya. Jadi, {Keju, Tomat} adalah itemset dengan 2 item.

- **Itemset satu item**: {Susu}, {Roti}, {Mentega}, {Popok}, {Bir}, {Cola}
- **Itemset dua item**: {Susu, Roti}, {Roti, Mentega}, {Popok, Bir}, dll.
- **Itemset tiga item**: {Susu, Roti, Mentega}, {Roti, Popok, Bir}, dll.

## Association Rules

Association rule adalah konsep fundamental dalam data mining yang mengungkapkan bagaimana item dalam dataset terhubung. Ini adalah arahan yang menunjukkan hubungan yang kuat dan berpotensi berguna antara dua set item.

Aturan-aturan ini dinyatakan dalam bentuk pernyataan "Jika-Maka", biasanya ditulis sebagai {X} → {Y}, di mana X dan Y adalah set item yang berbeda.

### Contoh

Sebagai ilustrasi, pertimbangkan aturan seperti {Popok} → {Tisu Bayi}. Aturan ini menunjukkan bahwa dalam transaksi di mana popok dibeli, ada kemungkinan besar bahwa tisu bayi juga dibeli.

Mari kita lihat salah satu penerapan algoritma association rule yang paling terkenal yaitu **Market Basket Analysis**.

## Market Basket Analysis

Ini adalah aplikasi utama dari association rules, berfokus pada analisis pola pembelian. Dengan memeriksa kombinasi item yang sering muncul bersama dalam pembelian, bisnis dapat memperoleh wawasan tentang strategi pemasaran dan penjualan.

![fig](https://miro.medium.com/v2/resize:fit:1100/format:webp/1*jWuaCpH7hyvRkJUEy2CTjQ.png)

## Komponen Association Rules — Anteseden dan Konsekuen

```
{ROTI, SUSU} → {BIR}
Anteseden → Konsekuen
```

Setiap association rule memiliki dua bagian: **anteseden** (jika) dan **konsekuen** (maka). Misalnya, dalam aturan {Pasta → Saus}, 'Pasta' adalah anteseden, dan 'Saus' adalah konsekuen.

- **Anteseden (X)**: Ini adalah bagian pertama dari aturan, kondisinya. Ini adalah set item yang ditemukan dalam database yang Anda periksa untuk pola. Dalam aturan {X} → {Y}, X adalah anteseden.

- **Konsekuen (Y)**: Ini adalah bagian kedua dari aturan, yang disimpulkan dari keberadaan anteseden dalam transaksi. Dalam aturan {X} → {Y}, Y adalah konsekuen.

- Set ini bersifat terpisah, artinya mereka tidak tumpang tindih.

## Cara Evaluasi Association Rules

Kekuatan dan keandalan association rule diukur menggunakan tiga metrik kunci:

![fig](https://miro.medium.com/v2/resize:fit:828/format:webp/1*7TlXNsS14mviiulB9y33iQ.png)

### 1. Support (Dukungan)

Mengukur seberapa sering item (baik X dan Y bersama-sama) muncul dalam dataset. Ini adalah proporsi transaksi yang mengandung baik X dan Y terhadap semua transaksi. Support tinggi menunjukkan bahwa item-item tersebut umum dalam transaksi.

### 2. Confidence (Kepercayaan)

Mengukur kemungkinan menemukan konsekuen dalam transaksi dengan kondisi bahwa transaksi tersebut juga mengandung anteseden. Misalnya, dalam aturan seperti {Roti → Mentega}, confidence mengukur seberapa sering mentega dibeli ketika roti dibeli.

### 3. Lift (Angkat)

Mengukur seberapa sering anteseden dan konsekuen dari aturan muncul bersama dibandingkan dengan yang kita harapkan jika mereka secara statistik independen. Nilai lift lebih besar dari 1 menunjukkan bahwa anteseden dan konsekuen saling bergantung. Lift mengevaluasi kekuatan aturan atas keacakan. Lift lebih besar dari 1 menunjukkan aturan yang kuat.

## Association Rules: Contoh Langkah demi Langkah

Sekarang, mari kita turunkan beberapa association rules potensial dari data Tabel 1:

Bayangkan dataset pembelian pelanggan dari toko kelontong. Setiap transaksi adalah catatan item berbeda yang dibeli bersama. Dengan menerapkan association rules, kita dapat menemukan pola seperti pelanggan yang membeli 'Teh' juga sering membeli 'Madu'.

### Contoh 01

**Aturan**: {Roti} → {Susu}

**Interpretasi**: Pelanggan yang membeli Roti kemungkinan juga akan membeli Susu.

**Support**: Dihitung dengan jumlah transaksi yang mengandung baik Roti dan Susu dibagi dengan total jumlah transaksi.

**Identifikasi Transaksi yang Mengandung Roti dan Susu**:

- T1 (Susu, Roti, Mentega)
- T4 (Roti, Susu, Popok, Bir)
- T5 (Roti, Susu, Popok, Cola)

Di sini, 3 dari 5 transaksi mengandung baik Roti dan Susu.

**Hitung Support**:
Support = 3 (transaksi dengan kedua item) / 5 (total transaksi) = 0,6 atau 60%

**Confidence**: Jumlah transaksi dengan baik Roti dan Susu dibagi dengan jumlah transaksi dengan hanya Roti.

**Identifikasi Transaksi yang Mengandung Roti**: T1, T2, T4, T5

4 transaksi mengandung Roti.

**Hitung Confidence**:
Confidence = 3 (transaksi dengan Roti dan Susu) / 4 (transaksi dengan Roti) = 0,75 atau 75%

Perhitungan ini menunjukkan bahwa tidak hanya kombinasi Roti dan Susu umum dalam dataset ini, tetapi juga ada kemungkinan tinggi Susu dibeli ketika Roti dibeli.

### Contoh 02

**Aturan**: {Popok, Bir} → {Susu}

**Interpretasi**: Pelanggan yang membeli Popok dan Bir bersama kemungkinan juga akan membeli Susu.

**Support**: Support untuk aturan ini adalah 0,4, artinya Popok, Bir, dan Susu dibeli bersama dalam 40% dari semua transaksi. Ini dihitung dengan membagi jumlah transaksi yang mencakup ketiga item (Popok, Bir, dan Susu) dengan total jumlah transaksi.

**Confidence**: Confidence untuk aturan ini adalah sekitar 0,67 (atau 66,67%), menunjukkan bahwa dalam sekitar 67% transaksi di mana Popok dan Bir dibeli, Susu juga dibeli. Ini dihitung dengan membagi jumlah transaksi yang mencakup ketiga item dengan jumlah transaksi yang hanya mencakup Popok dan Bir.

### Contoh 03

**Aturan**: {Susu, Roti} → {Popok}

**Interpretasi**: Pelanggan yang membeli Susu dan Roti kemungkinan akan membeli Popok.

**Support**: Support untuk aturan ini juga 0,4, yang berarti Susu, Roti, dan Popok dibeli bersama dalam 40% dari semua transaksi. Ini dihitung dengan cara yang sama seperti di atas, mempertimbangkan transaksi yang mencakup Susu, Roti, dan Popok.

**Confidence**: Confidence untuk aturan ini juga sekitar 0,67, menunjukkan bahwa dalam sekitar 67% transaksi di mana Susu dan Roti dibeli, Popok juga dibeli. Ini ditemukan dengan membagi jumlah transaksi dengan ketiga item (Susu, Roti, dan Popok) dengan jumlah transaksi dengan hanya Susu dan Roti.

### Catatan

- Dalam contoh ini, kita akan menghitung support dan confidence untuk setiap aturan untuk menentukan kekuatan dan relevansinya.
- Penting untuk dicatat bahwa ini hanyalah aturan hipotetis. Analisis aktual mungkin memerlukan algoritma yang lebih kompleks seperti Apriori atau FP-Growth dan pertimbangan faktor tambahan seperti lift.

## Jenis-jenis Algoritma Association Rule

Terdapat beberapa jenis algoritma association rule yang sering digunakan:

### 1. Algoritma Apriori

Algoritma Apriori adalah algoritma yang digunakan untuk mengetahui hubungan atau asosiasi antara satu objek/item dengan objek lain dalam suatu dataset.

Dengan kata lain, algoritma Apriori berupaya mengetahui bagaimana dua atau lebih objek berkaitan satu sama lain. Algoritma ini bisa juga diartikan untuk menganalisis bagaimana orang yang membeli produk A juga membeli produk B sekaligus.

Untuk menentukan itemset yang paling sering muncul, algoritma Apriori menggunakan pendekatan **"bottom-up"**.

Pendekatan ini menggunakan Breadth-first search dan struktur data Hash tree untuk menghitung kandidat itemset secara efisien.

![fig](https://miro.medium.com/max/1050/1*_22UGOKJJ6C8B3Zhk_IAiQ.png)

Pendekatan bottom-up dimulai dari setiap item dalam daftar itemset. Kemudian, kandidat dibentuk dengan self-join (penggabungan). Setiap iterasi, kita memperluas panjang itemset satu item yang membentuk subhimpunan.

Setelah itu dilakukan proses pengujian terhadap subhimpunan. Apabila ditemukan itemset yang berisi subhimpunan yang jarang, maka dilakukan pruning (pemangkasan). Proses dilakukan secara berulang-ulang sampai tidak ada lagi itemset yang berhasil diturunkan dari data.

### 2. Algoritma FP-Growth

Algoritma FP-Growth (Frequent Pattern Growth) secara efisien menambang itemset yang sering dari dataset transaksional besar. Berbeda dengan algoritma Apriori yang mengalami biaya komputasi tinggi karena pembangkitan kandidat dan pemindaian database berulang, FP-Growth menghindari inefisiensi ini dengan mengompres data ke dalam FP-Tree (Frequent Pattern Tree) dan mengekstrak pola langsung dari sana.

#### Cara Kerja FP-Growth

Berikut cara kerjanya dalam istilah sederhana:

1. **Kompresi Data**: Pertama, FP-Growth mengompres dataset ke dalam struktur yang lebih kecil yang disebut Frequent Pattern Tree (FP-Tree). Pohon ini menyimpan informasi tentang set item (kumpulan item) dan frekuensinya tanpa perlu menghasilkan set kandidat seperti yang dilakukan Apriori.

2. **Menambang Pohon**: Algoritma kemudian memeriksa pohon ini untuk mengidentifikasi pola yang muncul sering berdasarkan ambang batas support minimum. Ini dilakukan dengan memecah pohon menjadi "pohon kondisional" yang lebih kecil untuk setiap item, membuat proses lebih efisien.

3. **Menghasilkan Pola**: Setelah pohon dibangun dan dianalisis, algoritma menghasilkan pola yang sering (itemset) dan aturan yang menggambarkan hubungan antara item.

![fig](https://towardsdatascience-com.translate.goog/wp-content/uploads/2020/10/1x6UXLjWJ29e87PifsTJ17A-768x463.png?_x_tr_sl=en&_x_tr_tl=id&_x_tr_hl=id&_x_tr_pto=imgs)

## Aplikasi Praktis

### Market Basket Analysis

Memahami pola pembelian pelanggan, seperti menemukan bahwa pelanggan yang membeli pasta juga sering membeli saus tomat.

### Wawasan Ritel

Mengidentifikasi produk yang sering dibeli bersama untuk mengoptimalkan tata letak toko atau promosi.

### Strategi Cross-Selling

Menyarankan produk tambahan kepada pelanggan berdasarkan pilihan mereka saat ini.

### Kesehatan dan Penelitian

Dalam penelitian medis, association rules dapat membantu mengidentifikasi korelasi antara gejala yang berbeda atau interaksi obat.

### Deteksi Penipuan

Mengidentifikasi pola dalam transaksi yang mungkin menunjukkan aktivitas penipuan.

### Sistem Rekomendasi

Meningkatkan pengalaman pelanggan dengan merekomendasikan item yang relevan. Misalnya, layanan streaming online merekomendasikan film berdasarkan riwayat tontonan.
