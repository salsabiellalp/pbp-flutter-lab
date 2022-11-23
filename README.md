# Tugas 7 Counter_7

## Stateless widget dan stateful widget
Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. Sedangkan Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data.

Pada intinya Stateless Widget merupakan Widget yang tidak bisa berubah-ubah sedangkan Statefull Widget sebaliknya. Keduanya sangat mudah dipahami karena pengertiannya saling bertolak belakang. Penggunaan kedua widget ini sangat tergantung pada kebutuhan aplikasi. Dan seringnya, keduanya digunakan dalam satu file dart.

## Widget yang dipakai
- ```Scaffold``` :	Mengatur layout dari widget yang ada di dalamnya
- ```Text``` : Untuk menampilkan text dengan style tertentu
- ```FloatingActionButton``` : Untuk membuat button yang dapat melakukan action tertentu
- ```Row``` : Memposisikan widget secara horizontal
- ```Column``` : Memposisikan widget secara vertikal
- ```Padding``` : Menambahkan padding atau empty space
- ```Center``` : Memposisikan elemen ke tengah
- ```Icon``` : Memberi icon ke sebuah elemen

## Fungsi dari ```setState()```
Memanggil setState memberi tahu framework bahwa internal state objek ini telah berubah dengan cara yang mungkin memengaruhi interface pengguna di subtree ini, yang menyebabkan framework menjadwalkan build untuk objek Status ini.

Jika hanya mengubah status secara langsung tanpa memanggil setState, kerangka kerja mungkin tidak menjadwalkan build dan interface untuk subtree ini mungkin tidak diperbarui untuk mencerminkan status baru.

## Perbedaan antara ```const``` dengan ```final```
final dan const merupakan keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable. Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

## Implementasi
 - Membuat aplikasi Flutter bernama counter_7 dengan command ```flutter create counter_7```
 - Membuat fungsi ```_decrementCounter``` untuk decrement variabel counter
 - membuat kondidi ganjil genap dan mengatur warnanya sesuai ketentuan 
 - Menambah container padding yang berisi button untuk increase dan decrease counter
 - Untuk bonus, gunakan kondisi ```if (_counter != 0) ...``` di button dengan action ```_decreaseCounter``` agar    button tidak muncul saat counter = 0 


# Tugas 8

## Perbedaan ```Navigator.push``` dan ```Navigator.pushReplacement```
```Navigator.push``` akan menampilkan layar lain di atas layar saat ini karena perintah tersebut menambahkan satu route/page ke top of stack Navigator sehingga kita dapat kembali ke layar sebelumnya. sedangkan ```Navigator.pushReplacement``` akan menggantikan layar yang sedang ditampilkan dengan layar lain. Artinya, kita tidak dapat kembali ke page sebelumnya.

## widget apa saja yang dipakai di proyek kali ini dan fungsinya
- ```Drawer``` : Widget ini digunakan untuk membuat hamburger menu pada sisi kiri appbar yang dapat digunakan untuk navigasi.
- ```ListView``` : Widget ini dapat digunakan untuk menampilkan children widget dalam sebuah list. Artinya, children widget dapat di-scroll.
- ```ListTile``` : Widget ini merupakan widget yang dapat menampilkan 1-3 baris teks dalam sebuah list.
- ```TextFormField``` : Widget untuk menerima input teks.
- ```DropdownButton``` : Widget untuk menampilkan pilihan input.
- ```Icon``` : Widget untuk menampilkan ikon.
- ```Padding```, EdgeInsets : Widget untuk mengatur padding dari suatu widget.

## jenis-jenis event yang ada pada Flutter.
- ```onTap```: event terjadi saat widget di tap
- ```onPressed```: event terjadi saat widget di tekan
- ```onChanged```: event terjadi saat widget diubah
- ```onSaved```: event terjadi saat widget disimpan

## cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Keitka kita menjalankan navigator push, screen baru akan ditambahkan ke stack sehingga screen sebelumnya tertimpa dengan screen yang baru (Note: kalau memakai push replacement, screen sebelumnya seolah olah di pop terlebih dahulu baru di-push). Screen yang di push akan berada di paling atas stack, sehingga screen seolah olah berganti dan dapat dilihat oleh user.

## Implementasi
- Membuat drawer yang telah direfaktor menjadi beda file, yakni ```drawer.dart```.
- Menambahkan tiga route baru, pada drawer tersebut dengan widget ```ListTile``` dengan event handler ```onTap()``` yang akan melakukan operasi ```Navigator.push``` ataupun ```Navigator.pushReplacement```.
- Membuat form pada ```budget_form.dart``` dengan menggunakan widget ```Form``` yang berisi widget-widget form field seperti ```TextFormField``` dan ```DropdownButtonFormField```.
- Membuat class ```Budget``` pada ```models.dart``` yang merepresentasikan data budget. Class tersebut memanfaatkan static list untuk mempermudah pengaksesan data.
- Menampilkan data budget pada ```budget_data.dart``` dengan memanfaatkan ```ListView.builder``` yang berisi widget ```Card``` sebagai container masing-masing data budget.


# Tugas 9
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa, yaitu dengan memanfaatkan ```jsonDecode()``` dari ```dart:convert```. Namun, cara tersebut kurang efisien secara waktu dan memori, best practicenya pengambilan json dilakukan dengan membuat model terlebih dahulu karena selain dari struktur yang lebih rapih, menggunakan model juga akan memastikan tipe data setiap field model kita sesuai sehingga akan mempermudah pekerjaan kita kedepannya.

## Widget yang dipakai
- ```FutureBuilder```: Widget yang digunakan untuk menampilkan data yang akan diambil dari web service oleh Future.
- ```CheckboxListTile```: Widget yang menampilkan checkbox dengan title dan subtitle.
- ```InkWell```: Widget yang memiliki atribut event handler onTap(), juga memiliki efek ketika widget ditekan.

## Mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter
Data json didapatkan dengan melakukan fetch pada method yang ada di file fetchMyWatchlist.dart. Setelah itu, data yang telah di fetch akan di convert berdasarkan kode yang ada di model/mywatchlist.dart.

## Implementasi
- Tambahkan navigasi baru pada drawer kepada aplikasi Watch List dengan menambahkan widget ListTile dan event handler ```onTap()``` yang akan melakukan operasi ```Navigator.pushReplacement```.
- Buat model WatchList.
- Membuat halaman yang menampilkan data Watch List dengan menggunakan widget FutureBuilder yang akan menampilkan data dari endpoint json tugas 3 PBP.
- Membuat navigasi baru pada setiap film di halaman Watch List yang akan mengarah ke halaman detail film jika diklik dengan bantuan widget ListTile dan event handler ```onTap()``` yang akan melakukan operasi Navigator.push.
- Membuat halaman detail film dengan menggunakan widget FutureBuilder yang akan menampilkan detail dari watch list yang telah diklik, juga tombol untuk kembali pada halaman watch list dengan bantuan widget TextButton dan event handler ```onPressed()``` yang akan melakukan operasi Navigator.pop.
- Menambahkan checkbox dengan widget CheckboxListTile untuk menandakan apakah film tersebut sudah ditonton atau belum, dengan event handler ```onChanged()``` yang akan melakukan operasi ```setState()``` untuk mengubah nilai watched pada model WatchList.
