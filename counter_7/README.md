# Tugas 7 Counter_7

## Stateless widget dan stateful widget
Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. Sedangkan Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data.

Pada intinya Stateless Widget merupakan Widget yang tidak bisa berubah-ubah sedangkan Statefull Widget sebaliknya. Keduanya sangat mudah dipahami karena pengertiannya saling bertolak belakang. Penggunaan kedua widget ini sangat tergantung pada kebutuhan aplikasi. Dan seringnya, keduanya digunakan dalam satu file dart.

## Widget yang dipakai
- Scaffold :	Mengatur layout dari widget yang ada di dalamnya
- Text : Untuk menampilkan text dengan style tertentu
- FloatingActionButton : Untuk membuat button yang dapat melakukan action tertentu
- Row : Memposisikan widget secara horizontal
- Column : Memposisikan widget secara vertikal
- Padding : Menambahkan padding atau empty space
- Center : Memposisikan elemen ke tengah
- Icon : Memberi icon ke sebuah elemen

## Fungsi dari ```setState()```
Memanggil setState memberi tahu framework bahwa internal state objek ini telah berubah dengan cara yang mungkin memengaruhi interface pengguna di subtree ini, yang menyebabkan framework menjadwalkan build untuk objek Status ini.

Jika hanya mengubah status secara langsung tanpa memanggil setState, kerangka kerja mungkin tidak menjadwalkan build dan interface untuk subtree ini mungkin tidak diperbarui untuk mencerminkan status baru.

## Perbedaan antara const dengan final
final dan const merupakan keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable. Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

## Implementasi
 - Membuat aplikasi Flutter bernama counter_7 dengan command ```flutter create counter_7```
 - Membuat fungsi ```_decrementCounter``` untuk decrement variabel counter
 - membuat kondidi ganjil genap dan mengatur warnanya sesuai ketentuan 
 - Menambah container padding yang berisi button untuk increase dan decrease counter
 - Untuk bonus, gunakan kondisi ```if (_counter != 0) ...``` di button dengan action ```_decreaseCounter``` agar    button tidak muncul saat counter = 0 

