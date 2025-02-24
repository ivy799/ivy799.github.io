# LINEAR REGRESSION EXPLANATION

## Defenisi
Linear regresi adalah salah satu tipe algoritma machine learning supervised artinya algortima ini belajar dari data yang telah dilabel dan memetakan data dengan fungsi linear yang paling optimal yang dapat digunakan untuk memprediksi data baru. Ini menghitung hubungan antara variabel dependent dan satu atau lebih variabel independent, ini memprediksi output kontinu dari variabel input.

Sebagai contoh kita ingin memprediksi harga rumah dimana kita harus memperhatikan beberapa faktor seperti luas, umur, jumlah kamar, dll. dimana harga rumah sebagai y(variabel yang ingin diprediksi) dan faktor" sebagai x(variabel yang digunakan untuk memprediksi). Linear regression menggunakan semua variabel faktor ini untuk memprediksi harga rumah dan menganggap semua faktor tadi memiliki hubungan linear terhadap harga rumah.

**Gambar 1**  
![Gambar 1](https://media.geeksforgeeks.org/wp-content/uploads/20231129130431/11111111.png)

Sebelum ke penjelasan algoritma, Main Idea dibalik linear regression adalah menggunakan kuadrat terkecil untuk mencocokkan garis ke dalam data.

Proses mencocokkan garis ke data dalam hal ini dimulai dengan menggambar garis pada grafik data, lalu menghitung jarak antara data dan garis mengakarkan nilainya dan menjumlahkan semua nilainya, jarak antara garis dengan data disebut dengan "residual", lalu garis diputar sedikit, lalu kembali pada proses kedua, hal ini akan diulang beberapa kali, diambil nilai dengan jumlah residual yang paling sedikit, nilai inilah yang disebut rotasi kuadrat terkecil yang ditumpangkan pada data asli. Sekarang kita tau kenapa fungsi memetakan garis pada data disebut least square(kuadrat terkecil). Main idea ini dapat kita gunakan apabila ingin melakukan optimalisasi pada model seperti algoritma gradient descent.

Terdapat 2 fungsi hipotesis dalam linear regression:  

1. **Linearity** : yang pertama yaitu variabel dependent dan independent memiliki hubungan linear satu sama lain, yang berarti perubahan pada variabel x akan memengaruhi variabel y.
2. **Independence** : yang kedua yaitu pengamatan harus independent satu sama lain, yaitu kesalahan dari satu pengamatan tidak boleh memengaruhi pengamatan lain.

**Gambar 2**  
![Gambar 2](https://media.geeksforgeeks.org/wp-content/uploads/20231123113044/python-linear-regression-4.png)

## Algoritma
Sebelum masuk ke penjelasan algoritma linear regression, kita harus tau apa itu persamaan linear/persamaan garis lurus, dimana berbunyi:

**Gambar 3**  
y = w * x + b  

Di regresi linear ini kita akan menggunakan persamaan garis lurus ini untuk memprediksi suatu data. Dalam suatu algoritma machine learning kita harus tau bahwa suatu fungsi yang dibuat selalu belajar tanpa perlu diprogramkan secara manual, nah muncul pertanyaan bagaimana cara suatu fungsi belajar tanpa perlu diprogram ulang? Dalam algoritma regresi linear, rumus/fungsi tersebut belajar melalui **Weight (bobot) dan Bias**. Nilai tersebut disimpan pada kedua variabel tersebut hingga menghasilkan fungsi linear yang optimal.

Terdapat beberapa representasi rumus pada regresi linear, tetapi disini saya akan menggunakan:  
\[
y = a + bx
\]
dimana:  
- **y** sebagai target/variabel dependent  
- **a** sebagai bias  
- **b** sebagai bobot  
- **x** sebagai variabel independent  

Model akan mendapatkan garis optimal dengan mencari nilai bobot dan bias terbaik. Dalam model ini, pembaruan nilai bobot dan bias sangat penting untuk meminimalkan nilai error antara nilai prediksi dan nilai asli. 

Kita mulai pada menghitung bobot dan bias, dimana rumus bobot dan bias sebagai berikut:

\[
X' = \text{rata-rata nilai x}
\]
\[
y' = \text{rata-rata nilai y}
\]
\[
xi, yi = \text{nilai observasi dari masing" variabel}
\]

Dengan rumus ini kita bisa menghitung nilai bobot dan bias yang akan digunakan pada rumus persamaan linear tadi, kedua nilai ini diperbarui menggunakan metode **Least Squares** yang langsung menghitung nilai optimal dalam satu kali proses.
