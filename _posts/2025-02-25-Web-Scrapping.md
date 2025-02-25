---
layout: post
title: "Introduction To Web Scraping"
date: 2025-02-25
categories: DataMining Data
---

## Definisi  

Web scraping adalah teknik mengambil data dari sebuah situs secara otomatis menggunakan program atau script. Teknik ini memungkinkan ekstraksi informasi dari halaman web mana pun dalam format yang diinginkan.  

Proses web scraping dimulai dengan mengirimkan permintaan (request) ke server web, dan server akan mengembalikan respons sesuai dengan permintaan kita. Namun, dalam proses web scraping terdapat etika yang perlu diketahui.  

**image_1:** `_site\assets\img\favicons\Cuplikan layar 2025-02-25 112324.png`

### Etika dalam Web Scraping  

#### 1. Respecting `robots.txt`  
- Memahami tujuan dan aturan `robots.txt`  
- Menghindari batasan yang ditetapkan oleh situs web  

#### 2. Menangani Rate Limits  
- Mencegah server overload  
- Menerapkan delay dan backoff  

#### 3. Privasi Data dan Hak Cipta  
- Penggunaan data yang etis  
- Menghindari masalah hukum  

---

## Alasan  

Web scraping digunakan untuk mengotomatisasi pengambilan data dari situs web secara cepat dan efisien, terutama ketika data tidak tersedia melalui API. Teknik ini bermanfaat dalam berbagai bidang, seperti:  

- Analisis tren pasar  
- Pemantauan harga produk  
- Pengumpulan berita  
- Riset akademik  

Dengan web scraping, pengguna dapat menghemat waktu, mengurangi kesalahan manusia, dan mendapatkan data dalam format yang lebih mudah diolah untuk keperluan bisnis, penelitian, atau pengembangan aplikasi.  

---

## Tools  

- **Bahasa pemrograman** (Dalam hal ini, saya menggunakan Python 🐍)  
- **IDE** (Saya menggunakan Jupyter Notebook. Bisa juga pakai Google Colab, tetapi jika ingin lebih kompleks, bahkan Notepad atau MS Word pun bisa digunakan—tentu dengan konsekuensinya sendiri.)  
- **Website untuk scraping** ([Scrape This Site](https://www.scrapethissite.com/pages/))  
- **Library untuk membantu proses scraping** 🦸🏻‍♀️  
  - Jika menggunakan Python, saya sarankan **BeautifulSoup** dan mungkin **Selenium WebDriver**  
  - Jika tidak menggunakan Python, cari tools spesifik sesuai bahasa pemrograman pilihan Anda  

---

## Instalasi Python  

Anda bisa melihat cara instalasi Python di:  
[YouTube - Cara Install Python](https://youtu.be/U6POiWZnGFs?si=G4sMhZkWjMpCm_78)  

---

## Instalasi BeautifulSoup4  

pip install beautifulsoup4
atau
py -m pip install beautifulsoup4

dokumentasi lengkapnya bisa dilihat pada
[Dokumentasi beautifulsoup4](https://www.crummy.com/software/BeautifulSoup/bs4/doc/)  

membuat program sederhana
Berikut adalah langkah langkah mengambil data menggunakan web scrapping
1. Cari url website yang ingin diambil datanya
2. Kirim Http request ke server web tersebut
3. parse response ke data yang dibutuhkan
4. simpan datanya

langkah - 1
import library yang dibutuhkan

from bs4 import BeautifulSoup
import requests
import pandas as pd

disini pandas digunakan untuk menyimpan data hasil scrapping

langkah - 2
ambil url dari web tujuan dan simpan ke dalam variabel
import library yang dibutuhkan
url = 'https://www.scrapethissite.com/pages/simple/'

langkah - 3
buat object soup untuk mengambil data
soup = BeautifulSoup(requests.get(url).text, 'html.parser')

pada parameter pertama kita memasukkan fungsi request yang akan mengembalikan response, dan parameter kedua berisi format response yang ingin dikembalikan dalam hal ini adalah html, kenapa html? karna dengan menggunakan beautifulSoup kita bisa mencari data dengan mudah menggunakan beberapa tools. format response ini bisa kita sesuaikan semaunya, tetapi dalam kasus kita karna kita menggunakan beautiful soup maka perlu format html


langkah - 4
ambil data yang diinginkan dari response 
soup_1 = soup.find_all('div', class_='col-md-4 country')

disini kita mengambil semua data div dengan class "col-md-4 country" dan menyimpannya dalam variabel, analoginya seperti mengambil sedikit soup(soup_1) dari soup(object soup) menggunakan sendok  

Langkah - 5
menyimpan data dalam array/list
name_list = []
capital_list = []
population_list = []
area_list = []

for i in soup_1:
    name = i.find('h3').text
    name_list.append(name.strip())
    capital = i.find('span', class_='country-capital').text
    capital_list.append(capital)
    population = i.find('span', class_='country-population').text
    population_list.append(population)
    area = i.find('span', class_='country-area').text
    area_list.append(area)

pada proses ini karna ini menggunakan fungsi find_all() maka dilakukan looping karna fungsi find_all() mengembalikan banyak nilai sedangkan jika kita menggunakan find(),fungsi ini hanya mengembalikan kemunculan pertama dari langkah sebelumnya.

note : proses ini berbeda pada masing masing web, jadi sesuaikan kode berdasarkan data response kalian


langkah - 6
petakan data dalam dataframe
df = pd.DataFrame({
    'Name': name_list,
    'Capital': capital_list,
    'Population': population_list,
    'Area': area_list})

langkah - 7
simpan dataframe kedalam bentuk file csv
df.to_csv('scrap.csv', index=False)

kalian bisa melihat dokumentasi fullnya di 
https://www.crummy.com/software/BeautifulSoup/bs4/doc/#