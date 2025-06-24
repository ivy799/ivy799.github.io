---
layout: post
title: "Introduction To Linear Regression"
date: 2025-02-24
categories: MachineLearning Model
---

### Defenisi

Regresi Linear adalah sebuah model machine learning yang memetakan/memodelkan hubungan linear antara sebuah variabel dependen dengan satu atau lebih variabel independen, Regresi Linear adalah salah satu dari model machine learning supervised, artinya algortima ini belajar dari data yang telah diberi label dimana data digunakan untuk membuat fungsi linear yang paling optimal yang dapat digunakan untuk memprediksi data baru. model ini menggabungkan metode statistik regresi dengan fungsi linear untuk menghitung hubungan antara variabel dependent dan satu atau lebih variabel independent, untuk memprediksi output kontinu dari variabel input.

Sebagai contoh, kita ingin memprediksi harga rumah dimana kita harus memperhatikan beberapa faktor seperti luas,
umur rumah, jumlah kamar, dll. dimana harga rumah sebagai y(variabel dependen) dan faktor" penjualan sebagai x(variabel independen). Linear regression menggunakan semua variabel x ini untuk memprediksi harga rumah (y) dan menganggap semua faktor tadi memiliki hubungan linear terhadap harga rumah.

Perlu diperhatikan, sebelum menggunakan model Regresi Linear perlu dipastikan bahwa terdapat hubungan linear antara variabel dependen dan variabel independen. Anda bisa melihat hubungan kedua variabel tersebut menggunakan fungsi korelasi atau kovarians.

Secara umum kita bisa menuliskan formula linear regression seperti ini:

$$ y = \beta0 + \beta1x + e  $$

dimana:

- Y  : Variabel dependent (hasil)  
- X  : Variabel independent  
- $\beta0$  : Weight/intercept
- $\beta1$ : Bias/slope
- e : error  

terdapat 3 jenis hubungan linear dalam model regresi linear:  

1. Hubungan Linear Positive  
ketika garis regresi antara kedua variabel bergerak ke arah yang sama dengan kemiringan ke atas maka hubungan dikatakan hubungan positif, artinya ketika variabel x naik maka variabel y juga naik.

2. Hubungan Linear Negative  
ketika garis regresi antara kedua variabel bergerak ke arah yang sama dengan kemiringan ke bawah maka hubungan dikatakan hubungan negatif, artinya ketika variabel x turun maka variabel y juga turun.

3. Tidak Ada Hubungan  
Ketika garis regresi datar maka dikatakan tidak memiliki hubungan linear, artinya ketika variabel x naik atau turun maka tidak akan ada perubahan pada variabel y.

![fig](https://images.prismic.io/turing/659809bd531ac2845a27252c_image12_11zon_7947f4db8e.webp?auto=format,compress)

---

### Algoritma

Terdapat 2 jenis pendekatan utama dalam regresi linear, dimana berfungsi menemukan garis regresi yang paling sesuai :

#### 1. Pendekatan Analitik

Pada pendekatan analitik kita menghitung langsung nilai **Weight (bobot) dan Bias** menggunakan rumus :

![fig2](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgBrC0HfkA4ApHRVFoIHH6u8dlW5zvG4Y9OrPRmuH_ioUbhhWOKf4JdENNtH7yZPMr6AUoqU7Eekenczj2CROzqCHcPF8VvvLD43wlbm9HN5l6hN4hc71tBfkwBZb_j8pxAlh1r76td7cBI/s1600/rumus.bmp)

Dimana :

- \( Y \) : Variabel terikat (hasil belajar)  
- \( X \) : Variabel bebas (model pembelajaran)
- \( a \) : Intersep (nilai \( Y \) jika \( X = 0 \))  
- \( b \) : Koefisien regresi/slope (kemiringan garis regresi)  
- \( n \) : Jumlah data  

Nilai ini menghasilkan **Weight (bobot) dan Bias** dalam satu langkah yang bisa kita gunakan langsung tanpa melakukan
iterasi untuk mencari garis optimal seperti pendekatan iteratif.

#### 2. Pendekatan Iteratif  

Tujuan dari algoritma ini adalah mencari parameter
Weight dan Bias yang meminimalkan error antara data asli dan data prediksi, nilai wight dan bias diperbarui dengan melakukan iterasi n dan
memanfaatkan nilai error untuk mendapatkan nilai Weight dan bias yang optimal.Salah satu pendekatan iteratif yang sering digunakan adalah gradient descent, Cost Function yang digunakan adalah Mean Squared Error(MSE)

![fig1](https://cdn-media-1.freecodecamp.org/images/hmZydSW9YegiMVPWq2JBpOpai3CejzQpGkNG)
dimana:

- $ yi $  adalah nilai asli
- $ \hat{y_i} = \beta_0 + \beta_1 x_i $ nilai hasil prediksi

Rumus Weight dan bias gradient descent
![fig2](https://i.sstatic.net/3MhPr.png)
dimana:

- $ \alpha $ is the learning rate,  
- $ J(\beta_0, \beta_1) $ is the cost function

# Gradient Descent Update Equation

Karna kedua rumus $ \beta_0 $ dan $ \beta_1 $ pada gambar diatas masih abstrak dikarenakan kita belum tahu pasti nilai konkret untuk $\frac{\partial}{\partial \beta_0} J$ maka perlu dijabarkan terlebih dahulu untuk memudahkan implementasinya.

## Untuk $\beta_0$

$$
\beta_0 = \beta_0 - d \frac{\partial}{\partial \beta_0} J(\beta_0, \beta_1)
$$

Dengan fungsi cost Mean Squared Error (MSE):

$$
J(\beta_0, \beta_1) = \frac{1}{N} \sum (Y_i - \hat{Y}_i)^2
$$

Dimana:

$$
\hat{Y}_i = \beta_0 + \beta_1 X_i
$$

## Digunakan Turunan Parsial

$$
d \frac{1}{N} \sum \frac{\partial (Y_i - (\beta_0 + \beta_1 X_i))^2}{\partial \beta_0}
$$

$$
= \frac{1}{N} \sum \frac{\partial (Y_i - \beta_0 - \beta_1 X_i)^2}{\partial \beta_0}
$$

## Turunkan Menggunakan Chain Rule

Misalkan:

$$
f = (Y_i - \beta_0 - \beta_1 X_i)^2
$$

Dan:

$$
h = Y_i - \beta_0 - \beta_1 X_i
$$

Maka:

$$
f = h^2
$$

Gunakan aturan rantai:

$$
\frac{df}{d\beta_0} = \frac{df}{dh} \cdot \frac{dh}{d\beta_0}
$$

Dengan:

$$
\frac{df}{dh} = \frac{d(h^2)}{dh} = 2h
$$

$$
\frac{dh}{d\beta_0} = \frac{d(Y_i - \beta_0 - \beta_1 X_i)}{d\beta_0} = -1
$$

Sehingga:

$$
\frac{dF}{d\beta_0} = 2h \cdot (-1) = -2h
$$

$$
= -2 (Y_i - \beta_0 - \beta_1 X_i)
$$

Akhirnya, gradien rata-rata:

$$
\frac{1}{N} \sum -2 (Y_i - \beta_0 - \beta_1 X_i)
$$

## Untuk $\beta_1$

$$
\beta_1 = \beta_1 - d \frac{\partial}{\partial \beta_1} J(\beta_0, \beta_1)
$$

Dengan fungsi cost Mean Squared Error (MSE):

$$
J(\beta_0, \beta_1) = \frac{1}{N} \sum (Y_i - \hat{Y}_i)^2
$$

Dimana:

$$
\hat{Y}_i = \beta_0 + \beta_1 X_i
$$

## TDigunakan urunan Parsial

$$
d \frac{1}{N} \sum \frac{\partial (Y_i - (\beta_0 + \beta_1 X_i))^2}{\partial \beta_1}
$$

$$
= \frac{1}{N} \sum \frac{\partial (Y_i - \beta_0 - \beta_1 X_i)^2}{\partial \beta_1}
$$

## Menggunakan Chain Rule

Misalkan:

$$
f = (Y_i - \beta_0 - \beta_1 X_i)^2
$$

Dan:

$$
h = Y_i - \beta_0 - \beta_1 X_i
$$

Maka:

$$
f = h^2
$$

Gunakan aturan rantai:

$$
\frac{df}{d\beta_1} = \frac{df}{dh} \cdot \frac{dh}{d\beta_1}
$$

Dengan:

$$
\frac{df}{dh} = \frac{d(h^2)}{dh} = 2h
$$

$$
\frac{dh}{d\beta_1} = \frac{d(Y_i - \beta_0 - \beta_1 X_i)}{d\beta_1} = -x
$$

Sehingga:

$$
\frac{dF}{d\beta_1} = 2h \cdot (-1) = -2xh
$$

$$
= -2x (Y_i - \beta_0 - \beta_1 X_i)
$$

Akhirnya, gradien rata-rata:

$$
\frac{1}{N} \sum -2x (Y_i - \beta_0 - \beta_1 X_i)
$$

![fig3](https://community.cloudera.com/t5/image/serverpage/image-id/25068iFF075A5AEC3B8528/image-size/medium?v=1.0&px=400)

Dalam implementasinya pendekatan ini dimulai dengan inisialiasi awal nilai weight dan bias, biasanya dimulai dengan 0, lalu menghitung jarak antara data dan garis lalu mengakarkan nilainya dan menjumlahkan semua nilai masing-masing data. jarak antara garis dengan data disebut dengan **residual**, lalu garis dimiringkan sedikit, lalu kembali dihitung jarak antara
data dan garis, hal ini akan diulang beberapa kali,  lalu diambil nilai dengan jumlah residual yang paling sedikit, nilai inilah yang disebut rotasi kuadrat terkecil.
Sekarang kita tau kenapa fungsi memetakan garis pada data disebut **Least Squares** (kuadrat terkecil).
