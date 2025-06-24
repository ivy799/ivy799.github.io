---
layout: post
title: "Pengenalan Clustering dalam Machine Learning"
date: 2025-02-24
categories: MachineLearning Model
---

# Pengenalan Clustering dalam Machine Learning

Dalam dunia nyata, tidak semua data yang kita kerjakan memiliki variabel target. Pernahkah Anda bertanya-tanya bagaimana Netflix mengelompokkan film-film serupa atau bagaimana Amazon mengorganisir katalog produknya yang sangat luas? Ini adalah aplikasi clustering di dunia nyata. Jenis data ini tidak dapat dianalisis menggunakan algoritma supervised learning.

Ketika tujuannya adalah mengelompokkan titik data yang serupa dalam dataset, maka kita menggunakan analisis cluster. Dalam panduan ini, kita akan memahami konsep clustering, aplikasinya, dan beberapa algoritma clustering yang populer. Di sinilah metode clustering berguna.

## Apa itu Clustering pada Machine Learning?

Secara sederhana, clustering adalah algoritma machine learning tanpa pengawasan yang mengorganisir dan mengklasifikasikan objek, titik data, atau observasi yang berbeda ke dalam kelompok atau cluster berdasarkan kesamaan atau pola. Artinya, jenis model ini tidak memerlukan data target dalam proses pelatihannya.

![fig](https://dqlab.id/files/dqlab/file/data-web-1/data-user-5/postgroup/0f0327126cebe99dff31890ba2cd7777/pasted-image-0-14-2024-01-17-125504.png)

Dalam clustering, data yang serupa akan dikelompokkan bersama sehingga anggota dalam satu kelompok (atau cluster) memiliki lebih banyak kesamaan satu sama lain daripada dengan data di kelompok lain. Cara ini sangat membantu identifikasi hubungan yang belum terlihat dalam data yang besar dan kompleks, seperti pengelompokan pelanggan berdasarkan preferensi belanja, pengelompokan dokumen berdasarkan topik, atau pengelompokan gen berdasarkan pola ekspresi dalam biologi.

Ada berbagai cara untuk menggunakan clustering dalam machine learning, dari eksplorasi awal dataset hingga pemantauan proses yang sedang berlangsung. Anda mungkin menggunakannya dalam analisis data eksploratori dengan dataset baru untuk memahami tren, pola, dan outlier yang mendasarinya. Atau, Anda mungkin memiliki dataset yang lebih besar yang perlu dibagi menjadi beberapa dataset atau dikurangi menggunakan reduksi dimensionalitas. Dalam kasus ini, clustering dapat menjadi langkah dalam preprocessing.

Akan sangat membantu untuk memikirkan clustering sebagai upaya menemukan pengelompokan alami dalam data untuk melihat kategori apa yang mungkin ada dan apa yang mendefinisikan kategori tersebut. Cluster dapat membantu Anda menemukan hubungan yang mendasari antara titik data untuk melihat fitur atau karakteristik apa yang dibagikan di seluruh kategori. Tergantung pada algoritma clustering yang digunakan, Anda mungkin dapat menghapus outlier dari data Anda atau melabelinya sebagai outlier. Clustering juga dapat membantu dalam deteksi anomali dengan mendeteksi titik data mana yang tidak terkandung dalam cluster atau hanya terkait lemah dengan cluster dan dengan demikian mungkin merupakan anomali dalam proses pembangkitan data.

Clustering juga dapat digunakan untuk mengurangi kompleksitas dataset besar dengan mengurangi jumlah dimensi data. Jika Anda melihat bahwa kategori didefinisikan oleh hanya dua atau tiga fitur, Anda mungkin dapat menghapus fitur-fitur yang tidak perlu atau menggunakan teknik reduksi dimensionalitas seperti PCA. Clustering juga sangat berguna dalam membuat visualisasi dataset untuk melihat properti emergent dari data serta kepadatan dan hubungan antar cluster.

Algoritma clustering kadang-kadang dibedakan sebagai melakukan hard clustering, di mana setiap titik data hanya termasuk dalam satu cluster dan memiliki nilai biner yaitu berada di dalam atau tidak di dalam cluster, atau melakukan soft clustering di mana setiap titik data diberi probabilitas untuk termasuk dalam setiap cluster yang diidentifikasi. Tidak ada satu proses clustering terbaik, Anda akan ingin memilih pendekatan yang paling masuk akal untuk kebutuhan Anda dan data yang sedang Anda kerjakan.

## Contoh Penggunaan Clustering Model

![fig](https://dqlab.id/files/dqlab/file/data-web-1/data-user-5/postgroup/0f0327126cebe99dff31890ba2cd7777/pasted-image-0-15-2024-01-17-125528.png)

Sebuah supermarket ingin memahami perilaku belanja pelanggannya untuk meningkatkan strategi pemasaran dan penataan produk. Untuk ini, mereka memutuskan untuk menggunakan model clustering dalam machine learning.

Supermarket ini telah mengumpulkan data transaksi selama beberapa bulan, yang mencakup informasi seperti jumlah dan jenis produk yang dibeli, waktu pembelian, dan frekuensi kunjungan. Tujuan utamanya adalah mengidentifikasi pola belanja yang berbeda di antara pelanggan dan mengelompokkan mereka ke dalam segmen yang berbeda berdasarkan pola ini.

Pada tahap awal, data tersebut dibersihkan dan diproses untuk dijadikan fitur yang relevan untuk model clustering. Fitur-fitur seperti total pengeluaran, kategori produk yang paling sering dibeli, jam dan hari pembelian, serta frekuensi kunjungan dipilih sebagai variabel utama.

Supermarket ini menggunakan metode K-Means untuk clustering karena sifatnya yang sederhana namun efektif. Setelah menentukan jumlah cluster yang optimal melalui metode Elbow, mereka melatih model K-Means dengan data yang telah diproses. Proses ini menghasilkan beberapa cluster pelanggan, dengan karakteristik belanja yang unik.

Dengan hasil clustering ini, supermarket dapat mengembangkan strategi yang lebih terfokus. Misalnya, satu cluster mungkin berisi 'Pembeli Rutin', yang sering membeli kebutuhan sehari-hari dan makanan segar. Supermarket bisa menargetkan kelompok ini dengan penawaran khusus pada produk-produk segar atau memberikan diskon pada jam-jam tertentu untuk meningkatkan kunjungan.

Cluster lain mungkin 'Pembeli Sporadis', yang datang jarang namun cenderung membeli dalam jumlah besar. Untuk kelompok ini, supermarket bisa menawarkan promosi pada produk non-pangan atau barang pakai lama. Dengan demikian, clustering membantu supermarket dalam mengoptimalkan strategi pemasaran dan penataan produk berdasarkan kebutuhan dan kebiasaan pelanggan yang berbeda.

## Jenis-jenis Clustering

Ada banyak algoritma clustering yang berbeda karena ada beberapa cara untuk mendefinisikan cluster. Pendekatan yang berbeda akan bekerja dengan baik untuk jenis model yang berbeda tergantung pada ukuran data input, dimensionalitas data, kekakuan kategori, dan jumlah cluster dalam dataset. Perlu dicatat bahwa satu algoritma mungkin bekerja sangat baik untuk satu dataset dan sangat buruk pada dataset lainnya. Bagian ini membahas lima pendekatan yang umum digunakan untuk clustering. Ada teknik lain seperti spectral clustering atau Mean-Shift clustering yang berada di luar cakupan artikel ini.

### 1. Centroid-based Clustering (Metode Partisi)

Centroid-based clustering mengorganisir titik data di sekitar vektor pusat (centroid) yang mewakili cluster. Setiap titik data termasuk dalam cluster dengan centroid terdekat. Umumnya, ukuran kesamaan yang dipilih untuk algoritma ini adalah jarak Euclidean, jarak Manhattan, atau jarak Minkowski.

Dataset dipisahkan ke dalam jumlah cluster yang telah ditentukan, dan setiap cluster direferensikan oleh vektor nilai. Ketika dibandingkan dengan nilai vektor, variabel data input tidak menunjukkan perbedaan dan bergabung dengan cluster.

Kelemahan utama untuk algoritma berbasis centroid adalah persyaratan bahwa kita harus menetapkan jumlah cluster, "k," baik secara intuitif atau ilmiah (menggunakan Metode Elbow) sebelum sistem machine learning clustering mulai mengalokasikan titik data. Meskipun ada keterbatasan ini, ini tetap menjadi jenis clustering paling populer karena kesederhanaan dan efisiensinya.

### 2. Density-based Clustering (Metode Berbasis Model)

Density-based clustering mengidentifikasi cluster sebagai area dengan kepadatan tinggi yang dipisahkan oleh wilayah dengan kepadatan rendah dalam ruang data. Tidak seperti metode berbasis centroid, density-based clustering secara otomatis menentukan jumlah cluster dan kurang rentan terhadap posisi inisialisasi.

**Karakteristik Utama:**

- Dapat menemukan cluster dengan bentuk sembarang
- Menangani noise dan outlier dengan baik
- Unggul dengan cluster dengan ukuran dan bentuk yang berbeda
- Ideal untuk dataset dengan cluster yang bentuknya tidak beraturan atau tumpang tindih
- Secara efektif mengelola wilayah data yang padat dan jarang
- Fokus pada kepadatan lokal memungkinkan deteksi berbagai morfologi cluster

### 3. Connectivity-based Clustering (Clustering Hierarkis)

Connectivity-based clustering membangun hierarki cluster menggunakan ukuran konektivitas berdasarkan jarak ketika mengorganisir kumpulan item berdasarkan kesamaannya. Metode ini membangun dendrogram, struktur seperti pohon yang secara visual mewakili hubungan antara objek.

Di dasar pohon, setiap objek dimulai sebagai cluster individualnya sendiri. Algoritma kemudian mengevaluasi seberapa mirip objek satu sama lain dan mulai menggabungkan pasangan cluster terdekat menjadi kelompok yang lebih besar. Proses ini berlanjut secara iteratif, dengan cluster digabungkan langkah demi langkah, sampai semua objek bersatu menjadi satu cluster di bagian atas pohon.

Ada 2 pendekatan untuk clustering hierarkis:

- **Divisive Clustering**: Mengikuti pendekatan top-down, di sini kita menganggap semua titik data menjadi bagian dari satu cluster besar dan kemudian cluster ini dibagi menjadi kelompok yang lebih kecil.
- **Agglomerative Clustering**: Mengikuti pendekatan bottom-up, di sini kita menganggap semua titik data menjadi bagian dari cluster individual dan kemudian cluster ini digabungkan untuk membuat satu cluster besar dengan semua titik data.

### 4. Distribution-based Clustering

Distribution-based clustering adalah teknik yang mengasumsikan titik data dihasilkan dari campuran distribusi probabilitas (misalnya, Gaussian, Poisson, dll.). Tujuannya adalah mengidentifikasi cluster dengan memperkirakan parameter distribusi ini.

Dalam distribution-based clustering:

- Setiap cluster diwakili oleh distribusi probabilitas
- Titik data ditetapkan ke cluster berdasarkan seberapa besar kemungkinan mereka untuk termasuk dalam setiap distribusi
- Tidak seperti metode berbasis jarak (misalnya, K-Means), pendekatan ini dapat menangkap cluster dengan bentuk, ukuran, dan kepadatan yang bervariasi
- Banyak dataset dunia nyata, seperti data sensor, data keuangan, atau pengukuran biologis, secara alami mengikuti distribusi statistik

## Apa itu K-Means Clustering?

![fig](https://uploads-ssl.webflow.com/61af164800e38cf1b6c60b55/642d4c93d4d7fbfef446f4db_23.webp)

K-Means clustering adalah algoritma unsupervised machine learning yang digunakan untuk pengelompokan data dan pengenalan pola.

Caranya adalah dengan memilih beberapa titik data awal (k) secara acak, lalu memindah-mindahkannya hingga pengelompokan yang paling ideal ditemukan.

K-Means clustering sering digunakan dalam berbagai bidang, seperti segmentasi gambar, segmentasi pelanggan, riset pasar, dan pengelompokan dokumen.

### Cara Kerja K-Means

Secara garis besar, proses K-Means diawali dengan memilih jumlah (K) atau cluster yang ingin dibuat. Ini menentukan berapa kelompok yang ingin kita buat dari data kita, misal K = 3. Kita bisa mencari K secara manual atau menggunakan algoritma lain seperti Elbow method di mana mencari jumlah K optimal dari data kita.

Setelah itu, pilih titik data k secara acak dan letakkan setiap titik ke cluster-nya sebagai centroid (pusat cluster) awal.

![fig](https://uploads-ssl.webflow.com/61af164800e38cf1b6c60b55/642d4cb0de81f819f6e8266a_86.webp)

Lalu, kelompokkan semua titik data sesuai dengan jarak centroid terdekat yang telah dibuat. Langkah ini membutuhkan penghitungan jarak menggunakan Euclidean distance.

![fig](https://uploads-ssl.webflow.com/61af164800e38cf1b6c60b55/642d4cba2141ba3a7ead91ae_87.webp)

Ulangi langkah 3 hingga centroid yang ideal ditemukan, yaitu saat titik-titik data pada cluster tidak lagi bervariasi. Penghitungan K-Means clustering dapat dilakukan menggunakan tools seperti Java, Python, Matlab, dan R.

![fig](https://uploads-ssl.webflow.com/61af164800e38cf1b6c60b55/642d4cc4952aaf746c233dcb_88.webp)

### Kelebihan K-Means Clustering

Berdasarkan analisis yang ada, berikut ini adalah kelebihan K-Means clustering:

- **Sederhana**: Dapat digunakan oleh orang-orang dengan pengetahuan pemrograman yang terbatas
- **Mampu mengolah kumpulan data besar**: Dapat digunakan pada data dalam jumlah besar tanpa menghabiskan terlalu banyak waktu
- **Konvergensi**: Algoritma ini pada akhirnya akan menghasilkan kumpulan cluster yang stabil
- **Adaptasi dengan data baru**: Saat titik data baru tersedia, algoritma dapat dijalankan kembali untuk memasukkannya ke dalam cluster
- **Generalisasi**: Dapat melakukan generalisasi cluster dengan berbagai bentuk dan ukuran, seperti cluster elips, sehingga dapat digunakan untuk menemukan pola dalam berbagai kumpulan data

### Kekurangan K-Means Clustering

Kekurangan K-Means clustering adalah:

- **Memilih secara manual**: Jumlah cluster (k) harus dipilih secara manual, yang bisa jadi sulit dan subjektif. Memilih nilai k yang salah dapat mengakibatkan hasil pengelompokan yang buruk, dan memilih nilai k yang optimal membutuhkan pengetahuan yang cukup mengenai kumpulan data
- **Bergantung pada nilai centroid awal**: Karena bergantung pada nilai centroid yang ada di awal, algoritma ini mungkin tidak selalu dapat menemukan clustering yang ideal, sehingga perlu menjalankan algoritmanya beberapa kali untuk menemukan solusi optimal
- **Pengelompokan data dengan berbagai ukuran dan kepadatan**: Kelompok dalam data yang memiliki ukuran dan kepadatan berbeda dapat mengakibatkan beberapa cluster menjadi tidak seimbang. Hal ini dapat mempersulit interpretasi cluster yang dihasilkan
- **Pengelompokan outlier**: Outlier adalah titik data yang secara signifikan berbeda dari titik data lain dalam suatu kumpulan data. Outlier dapat mendistorsi hasil pengelompokan dengan menarik centroid menjauh dari pusat cluster yang sebenarnya
- **Penghitungan data dengan banyak dimensi**: Dengan bertambahnya jumlah dimensi, pengelompokan data akan sulit karena perhitungan jarak antara titik data dan centroid menjadi lebih kompleks. Maka dari itu, diperlukan proses untuk mengurangi dimensi atau modifikasi algoritma

## Aplikasi Clustering

Ada banyak area aplikasi di mana clustering adalah alat yang berharga untuk data mining atau analisis data eksploratori. Kita hanya dapat mencantumkan sampel kecil dari area aplikasi di sini untuk memberikan gambaran tentang pentingnya jenis analisis ini.

### Deteksi Anomali

Clustering dapat membantu mengungkap anomali dengan mengukur titik data mana yang tidak termasuk dalam struktur clustering yang didefinisikan oleh analisis cluster. Titik data yang termasuk dalam cluster kecil atau sangat jarang atau yang jauh dari cluster yang ditetapkan dapat dianggap sebagai anomali. Metode berbasis kepadatan seperti Expectation Maximization digunakan untuk mengidentifikasi titik data di wilayah padat sebagai normal dan yang di wilayah kepadatan rendah sebagai anomali.

### Riset Pasar

Ketika mencoba memahami persona pelanggan atau subset pasar apa yang mungkin ada, clustering dapat menjadi alat yang kuat untuk membantu melakukan segmentasi pelanggan. Anda mungkin dapat menggabungkan data demografis dengan data perilaku pelanggan untuk menemukan jenis karakteristik dan pola pembelian apa yang paling sering berkorelasi.

### Segmentasi Gambar

Gambar dapat memiliki pikselnya yang dikelompokkan dalam berbagai cara yang dapat membantu memotong gambar menjadi bagian yang berbeda untuk memisahkan latar depan dari latar belakang, mendeteksi objek menggunakan kesamaan dalam warna dan kecerahan, atau membagi gambar menjadi wilayah yang menarik untuk pemrosesan lebih lanjut. Dengan gambar, metode clustering memproses piksel dalam gambar dan mendefinisikan area dalam gambar yang mewakili cluster.

### Pemrosesan Dokumen

Analisis clustering dapat membantu dalam memproses dokumen dengan beberapa cara. Dokumen dapat dikelompokkan berdasarkan kesamaan untuk menunjukkan dokumen mana yang paling mirip satu sama lain. Ini dapat didasarkan pada panjang dokumen, distribusi frekuensi kata, atau berbagai cara lain untuk mengukur karakteristik kunci tentang dokumen. Kasus penggunaan umum lainnya adalah menganalisis cluster bagian dokumen berdasarkan frekuensi kata kunci, panjang kalimat, atau distribusi istilah. Ini dapat membantu dalam melakukan ringkasan dokumen atau dalam memecah dokumen yang lebih besar menjadi dataset yang lebih kecil untuk analisis lebih lanjut.
