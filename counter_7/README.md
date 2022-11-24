# TUGAS 7
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
- Stateless widget adalah widget yang tidak bisa mengalami perubahan melalui internal action. Widget tersebut baru dapat berubah apabila pemicunya berupa external event dari parent widgetnya. Stateless widget hanya memiliki final properties, description terkait dirinya ia dapat dari parent widgetnya. Contoh dari stateless widget adalah Icon, IconButton, dan Text. 
- Stateful widget adalah widget yang dapat mengalami perubahan jika terdapat trigger dari interaksi user dengan dirinya. Stateful widget bersifat dinamis, deskripsinya juga akan berubah secara dinamis selama penggunaan widget tersebut. Contoh dari stateful widget adalah Checkbox, Radio, dan Slider. 


## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Scaffold : untuk mengatur layout dari widget yang ada di dalamnya
- Text : untuk menampilkan text dengan format style tertentu
- FloatingActionButton : untuk menampilkan button yang dapat melakukan suatu action
- Row : untuk memposisikan beberapa widget dengan layout secara horizontal
- Column : untuk memposisikan widget secara vertikal
- Padding : untuk menambahkan dan mengatur set padding atau space kosong 
- Center : untuk memposisikan elemen ke tengah bagian
- Icon : untuk menggunakan icon pada sebuah elemen
- Expanded : untuk membuat jarak kosong antar elemen 


## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi dari setState adalah untuk memberi tahu framework bahwa internal state objek terkait telah berubah karena adanya action yang mungkin memengaruhi interface pengguna di subtree ini menyebabkan framework menjadwalkan build untuk objek status ini. Jika hanya mengubah status secara langsung tanpa memanggil setState, interface untuk subtree ini mungkin tidak terpebaharui untuk mencerminkan status baru. 

## Jelaskan perbedaan antara const dengan final.
- Keyword final berfungsi untuk mendeklarasikan suatu variabel yang bersifat immutable. Variabel dengan keyword final baru akan bersifat immutable saat runtime. Dengan begitu, value dari variabel final bisa ditetapkan dari awal maupun saat kompilasi berjalan. Dengan begitu valuenya baru akan diketahui saat runtime.
- Keyword const berfungsi untuk mendeklarasikan suatu variabel yang bersifat immutable dan konstan. Value dari variabelnya harus ditetapkan sejak awal. Sehingga pada saat compile, variabel tersebut sudah memiliki nilai. Value pada variabel const harus diinisialisasi secara eksplisit, tidak seperti final.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat app dengan perintah flutter create counter_7
- Melakukan modifikasi pada file `lib/main.dart`, yaitu:
    - Menambahkan floating action button baru dengan icon remove (-) 
    - Membuat fungsi decrement pada onpressed button
    - Menambahkan padding dan expanded untuk mengatur jarak dan posisi dua button
    - Membuat kondisi if else pada bagian widget text, warna dan texnya disesuaikan dengan kondisi counternya
    - Membuat kondisi if else pada bagian widget button decrement agar invisible saat counternya 0
- Add, commit, push ke repo github

# TUGAS 8
## Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`
Navigator.push akan menampilkan screen lain di atas screen saat ini karena adanya push screen baru ke stack navigator. Namun, screen yang lama hanya tertimpa, tidak di-pop sehingga user masih bisa kembali ke screen sebelumnya. Sementara, Navigator.pushReplacement akan menggantikan screen yang sedang ditampilkan dengan screen baru. Screen yang lama seperti di-pop terlebih dahulu sehingga user tidak dapat kembali ke screen yang lama tersebut lagi. 

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- Drawer : untuk membuat burger menu pada appbar yang berfungsi untuk navigasi pindah page
- ListView : untuk menampilkan children widget yang tersimpan dalam sebuah list (menampilkan data budget)
- TextFormField : untuk menerima input dari user
- DropdownButton : untuk menampilkan pilihan-pilihan input dalam bentuk dropdown
- EdgeInsets : untuk mengatur padding dari suatu widget
- DropdownMenuItem : untuk menampilkan pilihan item pada dropdown

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: `onPressed`)
- onChanged: terjadi saat terdapat perubahan pada widget
- onSaved: terjadi saat widget disimpan
- onPressed: terjadi saat widget di klik

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Saat navigator push dijalankan, screen baru akan ditambahkan ke stack dan terletak di paling atas stack sehingga screen yang lama tertimpa/tertutup oleh screen yang paling baru tersebut. Sementara itu, jika menggunakan navigator push replacement, screen yang sebelumnya seperti di pop terlebih dahulu baru yang baru di-push. Screen terbaru akan berada di paling atas sehingga screen tersebut yg dilihat oleh user. 
 
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat drawer yang berisi 3 navigasi, yaitu handle homepage counter_7, handle form page tambah budget, dan handle display budget pada data budget. Masing-masing menu akan diarahkan ke page lainnya sesuai konteks menunya. 
- Membuat file baru bernama `form.dart` beserta widget Form-nya dengan input sesuai keterangan soal. Page ini dipanggil jika menu tambah budget diklik pada burger. 
- Membuat file baru bernama `budget.dart` beserta widgetnya untuk menampilkan data-data inputan yang telah diinput di form.dart dan disimpan ke dalam struktur data list. Page ini dipanggil jika menu data budget diklik pada burger. 

# TUGAS 9 
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa tapi kurang dianjurkan. Dengan membuat model terlebih dahulu, data-data JSON tersebut akan lebih terstruktur dan lebih mudah untuk akses detail datanya. Selain itu, kita dapat memastikan apakah tipe datanya sesuai atau tidak dan dapat menyesuaikan ulang fields mana yg perlu dipakai. 

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Expanded : untuk membuat jarak kosong antar elemen 
- ListView : untuk menampilkan children widget yang tersimpan dalam sebuah list (menampilkan data film)
- EdgeInsets : untuk mengatur padding dari suatu widget
- CheckBox : untuk membuat form boolean toggle dengan checkbox (mengubah status watched)

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Pertama, data pada page json dibuatkan dulu modelnya dari generator di Google agar lebih mudah. Kemudian link json tersebut akan diletakkan di dalam method fetchMyWatchList agar datanya bisa difetch kemudian diconvert ke dalam bentuk objek yg sesuai dengan class model MyWatchList yg sudah dibuat sebelumnya. 

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
- Menambahkan button untuk navigasi ke halaman watchlist pada list hamburger
- Membuat model MyWatchList dari QuickType lalu dibuat file `.dart` nya di dalam folder model
- Membuat file `my_watch_list_page.dart` yang berisi method fetch data dan untuk menampilkan data-data tersebut nantinya
- Melakukan fetching data JSON dari link json heroku dan diconvert ke objek MyWatchList
- Menampilkan data-data yg didapat dengan ListView
- Menambahkan event onTap, jika card film tersebut diklik maka akan mengarah ke page detail dari film tersebut
- Membuat file untuk menampilkan halaman detail yg berisi detail filmnya dan button untuk kembali ke halaman watchlist
