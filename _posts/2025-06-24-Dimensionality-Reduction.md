---
layout: post
title: "Pengenalan Dimensionality Reduction dalam Machine Learning"
date: 2025-02-24
categories: MachineLearning Data
---

# Pengenalan Dimensionality Reduction dalam Machine Learning

## Apa itu Dimensionality Reduction?

Saat bekerja dengan model machine learning, kita biasa menemukan dataset dengan banyak fitur yang bisa menyebabkan waktu training model yang sangat lama dan kemungkinan terjadi overfitting (data tidak tergeneralisasi). Metode Dimensionality Reduction bisa membantu kita mengurangi jumlah fitur dengan tetap mempertahankan informasi kunci (penting).

Teknik seperti Principal Component Analysis (PCA), Singular Value Decomposition (SVD), dan Linear Discriminant Analysis (LDA) mengkonversi data ke dimensi rendah dengan tetap mempertahankan nilainya.

## Bagaimana Cara Dimensionality Reduction Bekerja?

Mari kita pahami bagaimana Dimensionality Reduction digunakan dengan bantuan contoh. Bayangkan sebuah dataset di mana setiap titik data berada dalam ruang 3D yang didefinisikan oleh sumbu X, Y, dan Z. Jika sebagian besar varians data terjadi di sepanjang X dan Y, maka dimensi Z mungkin berkontribusi sangat sedikit untuk memahami struktur data.

![fig](https://media.geeksforgeeks.org/wp-content/uploads/Dimensionality_Reduction_1.jpg)

- **Sebelum Reduksi**: Anda dapat melihat bahwa data ada dalam 3D (X,Y,Z). Data memiliki redundansi tinggi dan Z berkontribusi sedikit informasi yang bermakna
- **Setelah Reduksi**: Setelah mengurangi dimensionalitas, data direpresentasikan dalam ruang dimensi yang lebih rendah. Plot atas (X-Y) mempertahankan struktur yang bermakna sementara plot bawah (Z-Y) menunjukkan bahwa dimensi Z berkontribusi sedikit informasi yang berguna

Proses ini membuat analisis data lebih efisien, meningkatkan kecepatan komputasi dan visualisasi sambil meminimalkan redundansi.

## Pendekatan Dimensionality Reduction

Ada beberapa pendekatan untuk melakukan dimensionality reduction, yaitu:

### 1. Feature Selection (Seleksi Fitur)

- Memilih subset dari fitur yang ada (tanpa modifikasi)
- Menggunakan fitur yang sudah ada tanpa mengubahnya

### 2. Model Regularization (Regularisasi Model)

- **L2**: Mengurangi dimensionalitas efektif
- **L1**: Mengurangi dimensionalitas aktual

### 3. Kombinasi Fitur yang Ada

- Menggabungkan (memetakan) fitur yang ada menjadi jumlah fitur baru yang lebih sedikit
- **Kombinasi Linear** (proyeksi)
- **Kombinasi Nonlinear**

### 4. Proyeksi Linear

- Memproyeksikan data n-dimensi ke ruang k-dimensi
- k ≤ n, seringkali k << n
- Contoh: memproyeksikan ruang 10⁴ kata menjadi 3 dimensi

## Kapan Menggunakan Metode Tertentu?

Pemilihan subspace k-dimensi untuk proyeksi tergantung pada tugas:

- **Klasifikasi**: Memaksimalkan pemisahan antar kelas
  - Contoh: Linear Discriminant Analysis (LDA)
- **Regresi**: Memaksimalkan korelasi antara data yang diproyeksikan dan variabel respons
  - Contoh: Partial Least Squares (PLS)
- **Unsupervised**: Mempertahankan sebanyak mungkin varians data
  - Contoh: Principal Component Analysis (PCA)

## Teknik-teknik Dimensionality Reduction

Teknik dimensionality reduction dapat dibagi secara luas menjadi dua kategori:

### 1. Feature Selection (Seleksi Fitur)

Feature selection memilih fitur yang paling relevan dari dataset tanpa mengubahnya. Ini membantu menghilangkan fitur yang redundan atau tidak relevan, meningkatkan efisiensi model. Beberapa metode umum adalah:

- **Filter Methods**: Mengurutkan fitur berdasarkan relevansinya terhadap variabel target
- **Wrapper Methods**: Menggunakan kinerja model sebagai kriteria untuk memilih fitur
- **Embedded Methods**: Menggabungkan seleksi fitur dengan proses pelatihan model

### 2. Feature Extraction (Ekstraksi Fitur)

Feature extraction melibatkan pembuatan fitur baru dengan menggabungkan atau mentransformasi fitur asli. Fitur baru ini mempertahankan sebagian besar informasi penting dataset dalam dimensi yang lebih sedikit. Metode ekstraksi fitur umum adalah:

#### Principal Component Analysis (PCA)

Mengkonversi variabel yang berkorelasi menjadi 'komponen utama' yang tidak berkorelasi, mengurangi dimensionalitas sambil mempertahankan sebanyak mungkin varians, memungkinkan analisis yang lebih efisien.

#### Missing Value Ratio

Variabel dengan data yang hilang melampaui ambang batas yang ditetapkan dihilangkan, meningkatkan keandalan dataset.

#### Backward Feature Elimination

Dimulai dengan semua fitur dan menghilangkan yang paling tidak signifikan di setiap iterasi. Proses berlanjut sampai hanya fitur yang paling berdampak yang tersisa, mengoptimalkan kinerja model.

#### Forward Feature Selection

Dimulai dengan satu fitur, menambahkan yang lain secara bertahap dan mempertahankan yang meningkatkan kinerja model.

#### Random Forest

Menggunakan pohon keputusan untuk mengevaluasi pentingnya fitur, secara otomatis memilih fitur yang paling relevan tanpa perlu coding manual, meningkatkan akurasi model.

#### Factor Analysis

Mengelompokkan variabel berdasarkan korelasi dan mempertahankan yang paling relevan untuk analisis lebih lanjut.

#### Independent Component Analysis (ICA)

Mengidentifikasi komponen yang secara statistik independen, ideal untuk aplikasi seperti 'blind source separation' di mana metode berbasis korelasi tradisional tidak mencukupi.

## Manfaat Dimensionality Reduction

- **Mengurangi Kompleksitas Komputasi**: Dataset dengan dimensi yang lebih rendah memerlukan lebih sedikit waktu dan sumber daya untuk diproses
- **Menghindari Curse of Dimensionality**: Mencegah masalah yang timbul ketika dimensi data terlalu tinggi
- **Visualisasi Data**: Memungkinkan visualisasi data yang lebih baik dalam 2D atau 3D
- **Mengurangi Overfitting**: Dataset yang lebih sederhana mengurangi risiko model yang terlalu kompleks
- **Menghilangkan Noise**: Menghapus fitur yang tidak relevan atau redundan
- **Efisiensi Storage**: Mengurangi kebutuhan penyimpanan data

## Tantangan dalam Dimensionality Reduction

- **Kehilangan Informasi**: Beberapa informasi mungkin hilang selama proses reduksi
- **Interpretabilitas**: Fitur baru mungkin sulit diinterpretasikan
- **Pemilihan Dimensi Optimal**: Menentukan jumlah dimensi yang tepat bisa menjadi tantangan
- **Preprocessing**: Memerlukan pemahaman yang baik tentang data dan domain
