---
layout: post
title: "Introduction To Linear Regression"
date: 2025-02-24
categories: MachineLearning Model
---

### Defenisi
Linear regresi adalah salah satu tipe algoritma machine learning supervised, artinya algortima ini belajar dari data yang telah diberi label dimana data digunakan untuk membuat fungsi linear yang paling optimal yang dapat digunakan untuk memprediksi data baru. Ini menghitung hubungan antara variabel dependent dan satu atau lebih variabel independent, untuk memprediksi output kontinu dari variabel input.

Sebagai contoh kita ingin memprediksi harga rumah dimana kita harus memperhatikan beberapa faktor seperti luas, umur, jumlah kamar, dll. dimana harga rumah sebagai y(variabel yang ingin diprediksi) dan faktor" sebagai x(variabel yang digunakan untuk memprediksi). Linear regression menggunakan semua variabel faktor ini untuk memprediksi harga rumah dan menganggap semua faktor tadi memiliki hubungan linear terhadap harga rumah.

Secara umum kita bisa menuliskan formula linear regression seperti ini:

$$ y = w \cdot x + b $$

- \( Y \) : Variabel dependent (hasil)  
- \( X \) : Variabel independent  
- \( w \) : Weight  
- \( b \) : Bias  


---

### Algoritma 

Terdapat 2 jenis pendekatan utama dalam regresi linear, dimana berfungsi menemukan garis regresi yang paling sesuai : 


### 1. Pendekatan Iteratif  
Salah satu pendekatan iteratif yang sering digunakan adalah gradient descent, pendekatan ini dimulai dengan menaruh garis ke data dalam secara acak pada grafik, lalu menghitung jarak antara data dan garis lalu mengakarkan nilainya dan menjumlahkan semua nilai masing-masing data.  

![fig1](https://community.cloudera.com/t5/image/serverpage/image-id/25068iFF075A5AEC3B8528/image-size/medium?v=1.0&px=400)

jarak antara garis dengan data disebut dengan **residual**, lalu garis diputar sedikit, lalu kembali dihitung jarak antara data dan garis, hal ini akan diulang beberapa kali, lalu diambil nilai dengan jumlah residual yang paling sedikit, nilai inilah yang disebut rotasi kuadrat terkecil. Sekarang kita tau kenapa fungsi memetakan garis pada data disebut **Least Squares** (kuadrat terkecil).



### 2. Pendekatan Analitik 
Pada pendekatan analitik kita menghitung langsung nilai **Weight (bobot) dan Bias** menggunakan rumus : 

![fig2](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgBrC0HfkA4ApHRVFoIHH6u8dlW5zvG4Y9OrPRmuH_ioUbhhWOKf4JdENNtH7yZPMr6AUoqU7Eekenczj2CROzqCHcPF8VvvLD43wlbm9HN5l6hN4hc71tBfkwBZb_j8pxAlh1r76td7cBI/s1600/rumus.bmp)


Dimana :
- \( Y \) : Variabel terikat (hasil belajar)  
- \( X \) : Variabel bebas (model pembelajaran)  
- \( a \) : Intersep (nilai \( Y \) jika \( X = 0 \))  
- \( b \) : Koefisien regresi/slope (kemiringan garis regresi)  
- \( n \) : Jumlah data 

Nilai ini menghasilkan **Weight (bobot) dan Bias** dalam satu langkah yang bisa kita gunakan langsung tanpa melakukan iterasi untuk mencari garis optimal seperti pendekatan sebelumnya.

