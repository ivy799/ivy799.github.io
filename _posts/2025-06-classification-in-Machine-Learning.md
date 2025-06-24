---
layout: post
title: "Pengenalan Klasifikasi dalam Machine Learning"
date: 2025-02-24
categories: MachineLearning Model
---

# Pengenalan Klasifikasi dalam Machine Learning

## Apa itu Klasifikasi pada Machine Learning?

Klasifikasi adalah model machine learning yang terawasi dimana model bertujuan untuk memprediksi label yang benar berdasarkan input data. Klasifikasi mengajar mesin untuk membedakan data ke dalam kelompok tertentu, misalnya email spam dan non-spam. Setelah belajar, model dapat memutuskan kategori mana yang cocok untuk item baru, seperti mengidentifikasi apakah email baru adalah spam atau bukan.

Sebagai contoh, model klasifikasi dapat dilatih pada dataset gambar yang diberi label sebagai anjing atau kucing, dan kemudian dapat digunakan untuk memprediksi kelas gambar baru yang belum pernah dilihat sebagai anjing atau kucing berdasarkan fitur-fitur seperti warna, tekstur, dan bentuk.

![fig](https://images.datacamp.com/image/upload/v1663850410/Machine_learning_classification_illustration_for_the_email_a993b8df37.png)

## Jenis-jenis Klasifikasi

Ketika kita membicarakan klasifikasi dalam machine learning, kita berbicara tentang proses mengurutkan data ke dalam kategori berdasarkan fitur atau karakteristik tertentu. Ada berbagai jenis masalah klasifikasi tergantung pada berapa banyak kategori (atau kelas) yang kita kerjakan dan bagaimana mereka diorganisir.

### 1. Klasifikasi Biner (Binary Classification)

Dalam masalah klasifikasi biner, model memprediksi apakah data cocok dengan salah satu dari dua kelas. Teknik pembelajaran yang diterapkan selama pelatihan membuat model menilai fitur-fitur dalam data pelatihan dan memprediksi label mana dari dua kemungkinan yang berlaku untuk setiap titik data: positif atau negatif, benar atau salah, ya atau tidak.

Contohnya, filter spam mengklasifikasikan email sebagai spam atau bukan spam. Selain deteksi spam, model klasifikasi biner membuat prediktor perilaku yang dapat diandalkan: apakah pelanggan potensial akan churn atau membeli produk tertentu? Mereka juga berguna dalam pemrosesan bahasa alami (NLP), analisis sentimen, klasifikasi gambar, dan deteksi penipuan.

### 2. Klasifikasi Multikelas (Multiclass Classification)

Masalah klasifikasi multikelas mengklasifikasikan data dengan lebih dari dua label kelas, yang semuanya saling eksklusif. Dengan cara ini, tantangan multikelas mirip dengan tugas klasifikasi biner, kecuali dengan lebih banyak kelas.

Model klasifikasi multikelas memiliki banyak kasus penggunaan di dunia nyata. Selain menentukan apakah email adalah spam atau bukan spam, solusi klasifikasi multikelas juga dapat menentukan apakah email bersifat promosi atau prioritas tinggi. Pengklasifikasi gambar dapat mengklasifikasikan gambar hewan peliharaan menggunakan berbagai label kelas, seperti anjing, kucing, llama, platipus, dan lainnya.

Tujuan dari metode pembelajaran klasifikasi multikelas adalah mengajarkan model untuk menetapkan data input secara akurat ke rentang kategori yang lebih luas. Fungsi objektif umum dalam pelatihan multikelas adalah categorical cross-entropy loss, yang menilai kesenjangan antara prediksi model dengan data uji versus label yang benar untuk setiap titik data.

![fig](https://media.geeksforgeeks.org/wp-content/uploads/classification-1.png)

### 3. Klasifikasi Multi-Label (Multi-Label Classification)

Klasifikasi multilabel digunakan dalam situasi di mana beberapa label non-eksklusif dapat ditetapkan untuk setiap titik data. Tidak seperti jenis klasifikasi berbasis eksklusivitas, klasifikasi multilabel memungkinkan kemungkinan bahwa titik data menunjukkan karakteristik lebih dari satu kategori—refleksi yang lebih dekat dari ambiguitas dunia nyata dalam koleksi big data.

Tugas klasifikasi multilabel sering dicapai dengan menggabungkan prediksi dari beberapa model klasifikasi biner atau multikelas.

### 4. Klasifikasi Tidak Seimbang (Imbalanced Classification)

Klasifikasi tidak seimbang, di mana beberapa kategori berisi lebih banyak titik data daripada yang lain, memerlukan pendekatan khusus. Karena kelompok tertentu mengumpulkan lebih banyak titik data, beberapa model klasifikasi menjadi bias terhadap kelompok tersebut dan semakin memprediksi untuk mendukung mereka.

Tindakan pencegahan meliputi algoritma yang dikonfigurasi untuk lebih memberikan bobot pada biaya prediksi yang salah, atau metode sampling yang menghilangkan sampel mayoritas atau oversample dari kelompok yang kurang terwakili.

## Klasifikasi vs Regresi dalam Machine Learning

Meskipun klasifikasi dan regresi keduanya dari kategori supervised learning, mereka tidak sama. Perbedaan utama antara klasifikasi dan regresi adalah bahwa sementara klasifikasi memprediksi kategori titik data, regresi memprediksi nilai numerik riil yang terkait. Baik klasifikasi maupun regresi adalah jenis pemodelan prediktif tetapi dengan kasus penggunaan yang berbeda.

- **Tugas prediksi adalah klasifikasi** ketika variabel target bersifat diskrit. Contoh aplikasinya adalah identifikasi sentimen dasar dari sebuah teks.

- **Tugas prediksi adalah regresi** ketika variabel target bersifat kontinu. Contohnya dapat berupa prediksi gaji seseorang berdasarkan tingkat pendidikan, pengalaman kerja sebelumnya, lokasi geografis, dan tingkat senioritas.

![fig](https://images.datacamp.com/image/upload/v1663850409/Difference_between_Classification_and_Regression_98d8677bfd.png)

## Jenis-jenis Algoritma Klasifikasi

Ada banyak jenis algoritma klasifikasi yang berbeda. Meskipun mereka memiliki kasus penggunaan yang tumpang tindih, beberapa lebih cocok untuk aplikasi tertentu daripada yang lain. Beberapa algoritma klasifikasi paling populer meliputi:

### Regresi Logistik (Logistic Regression)

Algoritma regresi logistik sering digunakan untuk melakukan tugas klasifikasi. Regresi logistik adalah pengklasifikasi probabilitas yang diturunkan dari model regresi linier. Regresi linier menggunakan satu atau lebih variabel independen untuk memprediksi nilai variabel dependen. Nilai ini dapat berupa angka rasional kontinu apa pun.

Regresi logistik adalah modifikasi dari regresi linier sehingga nilai output (atau variabel dependen) dibatasi pada nilai apa pun antara 0 dan 1. Ini dilakukan dengan menerapkan transformasi logit—atau log odds—pada rumus regresi linier standar.

![fig](https://www.kdnuggets.com/wp-content/uploads/building-predictive-models-logistic-regression-in-python_01.png)

Model regresi logistik digunakan untuk klasifikasi biner dalam masalah regresi multivariat: ketika mempertimbangkan beberapa variabel, apakah titik data termasuk dalam satu kategori atau yang lain? Aplikasi umum adalah deteksi penipuan dan prediksi biomedis. Misalnya, regresi logistik telah diimplementasikan untuk membantu memprediksi kematian pasien yang disebabkan oleh trauma dan penyakit jantung koroner.

### Pohon Keputusan (Decision Tree)

Digunakan untuk klasifikasi maupun regresi, pohon keputusan membagi dataset menjadi kelompok yang semakin kecil dalam serangkaian penilaian klasifikasi biner. Struktur yang dihasilkan menyerupai pohon, bercabang keluar dari penilaian awal ke dalam daun atau node berikutnya.

![fig](https://lh7-rt.googleusercontent.com/docsz/AD_4nXd2tu7KRpHf2ZR_F-Sg9THDDChlKOzKwsYZz_EdYXJZYcbJ1jrGPF0YtR9shdod1UmgyhblP-SyihTrHtr2qf2OuLVkXQkClFgk2TLKLfiRoomDIel6uFS5bH05fI8SwBrqP4A48TxX3ryb5pu6zG9FlmGo?key=xOxyNVf2yllNSdFKBNOlBA)

Sifat pohon keputusan yang seperti diagram alur membuatnya menjadi salah satu model yang lebih intuitif untuk dipahami pengguna bisnis. Mudah divisualisasikan, pohon keputusan membawa transparansi ke proses klasifikasi dengan jelas mewakili proses keputusan dan kriteria yang digunakan untuk mengkategorikan data.

### Random Forest

Random forest adalah teknik ensemble yang menggabungkan output dari beberapa pohon keputusan menjadi satu hasil. "Hutan" yang dihasilkan meningkatkan akurasi prediksi dibandingkan pohon tunggal sambil melawan overfitting. Seperti pohon keputusan, random forest dapat menangani tugas klasifikasi maupun regresi.

![fig](https://media.geeksforgeeks.org/wp-content/uploads/20250522115823647286/Random_Forest_Algorithm.webp)

Algoritma random forest membuat beberapa pohon keputusan untuk setiap tugas, mengagregat prediksi semua pohon, kemudian memilih jawaban yang paling populer sebagai hasil definitif. Setiap pohon mempertimbangkan subset acak dari fitur data, membantu memastikan korelasi rendah antar pohon.

### Support Vector Machine (SVM)

Algoritma Support Vector Machine (SVM) memplot titik data ke dalam ruang multidimensi, dengan jumlah dimensi sesuai dengan jumlah fitur dalam data. Tujuan algoritma adalah menemukan garis optimal—juga dikenal sebagai hyperplane atau batas keputusan—yang paling baik membagi titik data ke dalam kategori.

Hyperplane optimal adalah yang memiliki margin terluas, yaitu jarak antara hyperplane dan titik data terdekat di setiap kelas. Titik data terdekat ini dikenal sebagai support vector. Model yang memisahkan data dengan hyperplane adalah model linier, tetapi algoritma SVM juga dapat menangani tugas klasifikasi nonlinier dengan dataset yang lebih kompleks.

Regresi logistik, pohon keputusan, random forest, dan algoritma SVM semuanya adalah contoh eager learner: algoritma yang membangun model dari data pelatihan dan kemudian menerapkan model tersebut untuk prediksi masa depan. Pelatihan memakan waktu lebih lama, tetapi setelah algoritma membangun model yang baik, prediksi menjadi lebih cepat.

Sebenarnya masih banyak algoritma klasifikasi lainnya seperti XGBoost, CatBoost, LightGBM, dll. Banyak dari algoritma ini dapat dengan mudah diimplementasikan dalam Python dengan menggunakan library scikit-learn. Sementara itu, metode ensemble dan model transformer adalah perkembangan yang lebih baru yang diterapkan pada masalah klasifikasi.

## Bagaimana Klasifikasi dalam Machine Learning Bekerja?

Klasifikasi melibatkan pelatihan model menggunakan dataset berlabel, di mana setiap input dipasangkan dengan label output yang benar. Model mempelajari pola dan hubungan dalam data, sehingga dapat memprediksi label untuk input baru yang tidak terlihat kemudian.

Dalam machine learning, klasifikasi bekerja dengan melatih model untuk mempelajari pola dari data berlabel, sehingga dapat memprediksi kategori atau kelas dari data baru yang tidak terlihat. Berikut cara kerjanya:

1. **Pengumpulan Data**: Anda mulai dengan dataset di mana setiap item diberi label dengan kelas yang benar (misalnya, "kucing" atau "anjing").

2. **Ekstraksi Fitur**: Sistem mengidentifikasi fitur (seperti warna, bentuk, atau tekstur) yang membantu membedakan satu kelas dari yang lain. Fitur-fitur ini adalah yang digunakan model untuk membuat prediksi.

3. **Pelatihan Model**: Algoritma machine learning klasifikasi menggunakan data berlabel untuk mempelajari cara memetakan fitur ke kelas yang benar. Ia mencari pola dan hubungan dalam data.

4. **Evaluasi Model**: Setelah model dilatih, ia diuji pada data baru yang tidak terlihat untuk memeriksa seberapa akurat ia dapat mengklasifikasikan item.

5. **Prediksi**: Setelah dilatih dan dievaluasi, model dapat digunakan untuk memprediksi kelas data baru berdasarkan fitur yang telah dipelajari.

6. **Evaluasi Model**: Mengevaluasi model klasifikasi adalah langkah kunci dalam machine learning. Ini membantu kita memeriksa seberapa baik model berkinerja dan seberapa baik dalam menangani data baru yang tidak terlihat. Tergantung pada masalah dan kebutuhan, kita dapat menggunakan metrik yang berbeda untuk mengukur kinerjanya.

![fig](https://media.geeksforgeeks.org/wp-content/uploads/20240119133028/classification-task.png)

Jika metrik kualitas tidak memuaskan, algoritma ML atau hyperparameter dapat disesuaikan, dan model dilatih ulang. Proses iteratif ini berlanjut sampai kinerja yang memuaskan tercapai. Singkatnya, klasifikasi dalam machine learning adalah tentang menggunakan data berlabel yang ada untuk mengajarkan model cara memprediksi kelas data baru yang tidak berlabel berdasarkan pola yang telah dipelajari.

## Metode Evaluasi Pembelajaran Klasifikasi

Peneliti dan pengembang memilih metrik evaluasi tertentu untuk model klasifikasi tergantung pada tugas klasifikasi spesifik. Semua mengukur akurasi dengan mana learner, atau classifier, secara akurat memprediksi kelas model.

Beberapa metrik evaluasi paling populer adalah:

### 1. Akurasi (Accuracy)

Akurasi adalah rasio true positive terhadap semua prediksi dalam dataset. Ini mengukur seberapa sering model machine learning memprediksi hasil dengan benar—dalam hal ini, kelas yang tepat untuk titik data.

Akurasi memberikan gambaran tingkat tinggi tentang kinerja model, tetapi tidak mengungkapkan apakah model lebih baik dalam memprediksi kelas tertentu daripada yang lain. Dalam kasus di mana dataset sangat tidak seimbang, fokus pada akurasi dapat membuat model mengabaikan semua dataset yang lebih kecil dan memprediksi semua hasil sebagai kelas mayoritas. Dalam situasi ini, akurasi keseluruhan masih akan tinggi.

Filter spam akan memiliki akurasi tinggi jika sebagian besar tebakannya benar, bahkan jika melewatkan sebagian besar email spam yang sebenarnya.

### 2. Presisi (Precision)

Presisi, atau positive predicted value (PPV), adalah proporsi prediksi kelas positif yang termasuk dalam kelas yang ditentukan. Presisi mengungkapkan apakah model memprediksi dengan benar untuk kelas target, membuatnya berguna untuk tugas klasifikasi tidak seimbang atau ketika biaya false positive tinggi.

Dalam filter spam, presisi menunjukkan berapa banyak email spam yang terdeteksi adalah spam. Model yang salah mengklasifikasikan data sebagai false positive memiliki presisi rendah, sementara model dengan false positive lebih sedikit memiliki presisi tinggi.

### 3. Recall (Sensitivitas)

Juga dikenal sebagai sensitivitas atau true positive rate (TPR), recall menunjukkan persentase instance kelas yang terdeteksi oleh model. Recall menunjukkan seberapa sering model mendeteksi anggota kelas target dalam dataset. Untuk filter spam, recall menunjukkan jumlah email spam aktual yang diidentifikasi model sebagai spam.

### 4. F1 Score

Presisi dan recall memiliki hubungan terbalik. Ketika classifier mengembalikan lebih banyak true positive yang menunjukkan peningkatan recall, ia dapat salah mengklasifikasikan non-instance, menghasilkan false positive dan menurunkan presisi. F1 score menyelesaikan trade-off ini dengan menggabungkan presisi dan recall untuk mewakili akurasi total model class-wise.

### 5. Confusion Matrix

Confusion matrix adalah tabel yang merepresentasikan nilai prediksi dan aktual dari suatu kelas. Kotak-kotak matriks menggambarkan jumlah true positive, false positive, false negative, dan true negative. Total dari nilai-nilai ini adalah jumlah total prediksi model.

### 6. Kurva ROC

Kurva receiver operating characteristic (ROC) memvisualisasikan proporsi true positive terhadap true negative. Grafik memplot true positive rate terhadap true negative rate untuk setiap threshold yang digunakan dalam klasifikasi model. Statistik area under curve (AUC) muncul dari kurva ROC.

AUC mengukur seberapa besar kemungkinan positif yang dipilih secara acak memiliki skor kepercayaan yang lebih tinggi daripada negatif acak. Nilai AUC berkisar dari 0 hingga 1. Skor 0 menandakan bahwa model memberi skor semua negatif dengan probabilitas lebih tinggi daripada positif, sedangkan 1 berarti bahwa model memberi skor setiap positif dengan probabilitas lebih tinggi.

## Contoh Klasifikasi Machine Learning dalam Kehidupan Nyata

Algoritma klasifikasi banyak digunakan dalam berbagai aplikasi dunia nyata di berbagai domain, termasuk:

- **Penyaringan Email Spam**: Mengklasifikasikan email sebagai spam atau tidak spam berdasarkan konten dan metadata.

- **Penilaian Risiko Kredit**: Algoritma memprediksi apakah pemohon pinjaman kemungkinan akan gagal bayar dengan menganalisis faktor-faktor seperti skor kredit, pendapatan, dan riwayat pinjaman. Ini membantu bank membuat keputusan pinjaman yang tepat dan meminimalkan risiko keuangan.

- **Diagnosis Medis**: Model machine learning mengklasifikasikan apakah pasien memiliki kondisi tertentu (misalnya, kanker atau diabetes) berdasarkan data medis seperti hasil tes, gejala, dan riwayat pasien. Ini membantu dokter membuat diagnosis yang lebih cepat dan akurat, meningkatkan perawatan pasien.

- **Klasifikasi Gambar**: Diterapkan di bidang seperti pengenalan wajah, kendaraan otonom, dan pencitraan medis.

- **Analisis Sentimen**: Menentukan apakah sentimen dari sebuah teks positif, negatif, atau netral. Bisnis menggunakan ini untuk memahami opini pelanggan, membantu meningkatkan produk dan layanan.

- **Deteksi Penipuan**: Algoritma mendeteksi aktivitas penipuan dengan menganalisis pola transaksi dan mengidentifikasi anomali yang penting dalam melindungi dari penipuan kartu kredit dan kejahatan keuangan lainnya.

- **Sistem Rekomendasi**: Digunakan untuk merekomendasikan produk atau konten berdasarkan perilaku pengguna sebelumnya, seperti menyarankan film di Netflix atau produk di Amazon. Personalisasi ini meningkatkan kepuasan pengguna dan penjualan untuk bisnis.
