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

### Latihan

Disini saya ingin mencoba menggunakan salah satu algoritma dimensionality reduction yang sering digunakan, yaitu PCA(Principal componen analysis), Secara sederhana, Dimensionality Reduction adalah teknik untuk mengurangi jumlah fitur dalam suatu dataset dengan tetap mempertahankan informasi yang paling relevan. Tujuannya adalah untuk meningkatkan efisiensi pemrosesan data dan performa model machine learning. Salah satu metode yang paling terkenal adalah Principal Component Analysis (PCA), yang bekerja dengan mengubah fitur asli menjadi sekumpulan fitur baru (principal components) yang lebih ringkas tetapi tetap merepresentasikan data secara optimal.

Hal yang pertama kita lakukan adalah mengimport library yang kita butuhkan

```python
import pandas as pd
import numpy as np
from sklearn.decomposition import PCA
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
import matplotlib.pyplot as plt

```

lalu mengimport dataset yang digunakan, disini saya menggunakan data pinguins yang bisa didapatkan di kaggle (<https://www.kaggle.com/datasets/youssefaboelwafa/clustering-penguins-species>)

```python
df = pd.read_csv('penguins.csv')
df.info()
```

lakukan proses pembersihan data seperti, menghapus nilai null, duplikat dan outlier pada data. Setelah itu kita melakukan normalisasi data dimana membuat data kita mempunyai skala yang sama, Kenapa kita melakukan normalisasi data? karena PCA bekerja berdasarkan variansi, sehingga perbedaan skala antar fitur bisa mempengaruhi hasilnya. Metode normalisasi yang saya gunakan disini adalah Min-Max Scaler yang membuat data berada pada rentang 0 - 1

```python
# Normalisasi Min-Max untuk kolom numerik
df_normalized = df.copy()
for col_name in numeric_cols:
    min_val = df_normalized[col_name].min()
    max_val = df_normalized[col_name].max()
    df_normalized[col_name] = (df_normalized[col_name] - min_val) / (max_val - min_val)

df_normalized.head()
```

setelah melakukan proses normalisasi, sekarang kita siap menerapkan PCA pada data kita. sebelumnya saya ingin mengetes bagaimana performa suatu model tanpa melakukan reduksi fitur, disini saya menggunakan model logistic regression untuk trainingnya dimana menghasilkan akurasi 0.88 atau 88% dalam membedakan 2 kelompok data pada dataset. Sekarang kita ingin mencoba menggunakan PCA untuk mereduksi fitur dan melakukan training lagi menggunakan fitur hasil PCA dan membandingkannya dengan hasil tanpa PCA.

```python
# Gunakan data yang sudah dinormalisasi
X_normalized = df_normalized[numeric_cols]
y_target = df['sex']  # Simpan target sebelum PCA

pca = PCA(0.95) # 0.95 disini artinya kita ingin menangkap 95% nilai fitur dari fitur lama
X_pca = pca.fit_transform(X_normalized)

print(f'Jumlah komponen PCA: {pca.n_components_}')
print(f'Explained variance ratio: {pca.explained_variance_ratio_}')
print(f'Total explained variance: {sum(pca.explained_variance_ratio_):.4f}')
print(f'Shape data setelah PCA: {X_pca.shape}')
```

ini menghasilkan :
Jumlah komponen PCA: 3
Explained variance ratio: [0.69599675 0.19193167 0.0834056 ]
Total explained variance: 0.9713
Shape data setelah PCA: (335, 3)

hasil ini berarti dari 4 fitur hanya diperlukan 3 komponen utama untuk menangkap 95% dari nilai asli, lalu pada Explained variance ratio kita bisa melihat berapa bobot nilai pada masing masin komponen. disini kita bisa melihat komponen 1 memiliki nilai 0.69 atau sekitar 70% informasi dari data asli.

setelah itu dilakukan lagi train ulang pada model menggunakan fitur hasil PCA. Dimana hasilnya menghasilkan akurasi sekitar 0.85 atau 85% akurasi, memiliki perbedaan 0.0299 dari model yang tidak menggunakan pca. Walaupun terdapat pengurangan akurasi tetapi dengan menggunakan fitur yang lebih sedikit bisa menghasilkan akurasi yang hampir sama dengan model yang menggunakan semua fitur. Dalam praktik di dunia nyata jika kita mempunyai pouluhan atau ratusan fitur, metode Dimensionality Reduction ini bisa menghasilkan akurasi yang tinggi dengan fitur yang jauh lebih sedikt sehingga dapat mengurangi beban model dan membuat prediksi lebih cepat.
