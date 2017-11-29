-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2017 at 12:23 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erd`
--

-- --------------------------------------------------------

--
-- Table structure for table `bab_content`
--

CREATE TABLE `bab_content` (
  `id` int(10) NOT NULL,
  `id_bab` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bab_content`
--

INSERT INTO `bab_content` (`id`, `id_bab`, `title`, `content`) VALUES
(1, 1, 'Identifikasi Entitas dan Atribut', '<p><center>Identifikasi Entitas dan Atribut</center></p>\n<p>&nbsp;</p>\n<ul>\n<li>Definisi ERD</li>\n</ul>\n<p>&nbsp;</p>\n<p>Diagram relasi entitas atau entity-relationship diagram (ERD) adalah suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasi tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut. ERD merupakan model jaringan yang menggunakan susunan data yang disimpan dalam sistem secara abstrak. ERD berupa model data konseptual, yang merepresentasikan data dalam suatu organisasi.ERD menekankan pada struktur dan relationship data.</p>\n<p>&nbsp;</p>\n<p>Untuk menggambarkan ER diagaram setidaknya ada tiga langkah yang harus dilakukan oleh perancang basis data yaitu:</p>\n<ol>\n<li>Menemukan atau mendefinisikan Entitas</li>\n<li>Menemukan atau mendefinisikan atribute</li>\n<li>Menemukan atau mendefinisikan Relasi</li>\n<li>Menggambarkan ERD menggunakan notasi-notasi standar.</li>\n</ol>\n<p>&nbsp;</p>\n<ul>\n<li>Menemukan Entitas</li>\n</ul>\n<p>&nbsp;</p>\n<p>Langkah-langkah yang seharusnya dilakukan untukmenemukan atau mendefinisikan Entitas dalam suatu sistem data base adalah sebagai berikut :</p>\n<ol>\n<li>Buat ilustrasi atau gambaran cerita (role of bussiness) tentang sistem yang akan dicari entitasnya.</li>\n<li>Tandai setiap objek yang diwakili oleh kata benda yang ada di dalam ilustrasi tersebut.</li>\n<li>Untuk setiap objek tersebut yakinkan bahwa ia memiliki karakteristik yang nanti disebut sebagai atribut.</li>\n<li>Tentukan objek yang merupakan entitas (Jika memang ia memiliki karakteristik jadikan ia sebagai entitas)</li>\n<li>Menggambarkan entitas beserta atributnya menggunakan notasi simbol yang telah ditentukan.</li>\n</ol>\n<p>&nbsp;</p>\n<p>Contoh : Sistem data base Kepegawaian di perusahaan A</p>\n<p><strong>&nbsp;</strong></p>\n<p><strong>Langkah 1</strong>:</p>\n<p>Membuat gambaran cerita tentang sistem kepegawaian di suatu perusahaan A.</p>\n<p>&nbsp;</p>\n<p>Perusahaan A memiliki 100 pegawai. Setiap pegawai dipimpin pengawas/mandor dari pegawai perusahaan itu sendiri dan tidak semua pegawai memimpin pegawai yang lain. sehingga satu pengawas dapat memimpin beberapa pegawai. Setiap pegawai bekerja untuk suatu departemen dan dalam suatu departemen dapat terdiri dari beberapa pegawai. Setiap departemen dikepalai oleh seorang pegawai yang bekerja mulai tanggal tertentu.</p>\n<p>Sebuah departemen dapat berada di beberapa lokasi. Selain bekerja di suatu departemen pegawai dapat bekerja pada beberapa proyek. Setiap proyek dikendalikan/diatur oleh suatu departemen, namun suatu departemen tidak harus mengendalikan/mengatur proyek. Satu departemen dapat mengendalikan beberapa proyek dan satu proyek hanya dikendalikan oleh satu departemen</p>\n<p>Satu proyek dapat terdiri dari beberapa pegawai. Untuk keperluan penggajian perusahaan memerlukan data tanggungan pegawai. Seorang pegawai dapat menanggung beberapa tanggungan. Jika seorang pegawai pindah maka datanya akan dipindahkan / dihapus berikut data tanggungan / keluarganya.</p>\n<p>&nbsp;</p>\n<p><strong>Langkah 2</strong>.</p>\n<p>Menandai pada soal cerita diatas setiap objek yang diwakili oleh kata benda yang ada di dalam ilustrasi tersebut</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><strong>Langkah 3</strong>:&nbsp;</p>\n<p>Untuk setiap objek tersebut yakinkan bahwa ia memiliki karakteristik yang nanti disebut sebagai atribut. Sehingga kita menemukan entitas dan kemungkinan atributnya adalah sebagai berikut :</p>\n<ol>\n<li>a) Perusahaan: NoPerusahaan, nama, alamat</li>\n<li>b) Pegawai: NoKTP, Nama, Alamat, Jenis kelamin,gaji</li>\n<li>c) Pengawas:NoKTP, Nama, Alamat, Jenis kelamin,gaji</li>\n<li>d) Departemen: Nomor, Nama, lokasi, jumlah pegawai</li>\n<li>e) Lokasi : lokasi</li>\n<li>f) Proyek: Nomor, nama, lokasi</li>\n<li>g) Tanggungan: nama, jenis kelamin, tanggal lahir, hubungan dengan pegawai</li>\n</ol>\n<p>&nbsp;</p>\n<p><strong>Langkah 4</strong>: Tentukan objek yang merupakan entitas (Jika memang ia memiliki karakteristik jadikan ia sebagai entitas)</p>\n<ol>\n<li>a) Perusahaan: NoPerusahaan, nama, alamat (hanya berisi satu baris data) -&gt; bukan entitas</li>\n<li>b) Pegawai: NoKTP, Nama, Alamat, Jenis kelamin,gaji -&gt; entitas kuat</li>\n<li>c) Pengawas:NoKTP, Nama, Alamat, Jenis kelamin,gaji -&gt; sama dengan entitas Pegawai</li>\n<li>d) Departemen: Nomor, Nama, lokasi, jumlah pegawai -&gt; entitas kuat</li>\n<li>e) Lokasi : lokasi (karakteristiknya departemen, tidak memiliki karakteristik lain (unik)) -&gt; bukan entitas</li>\n<li>f) Proyek: Nomor, nama, lokasi -&gt; entitas kuat</li>\n<li>g) Tanggungan: nama, jenis kelamin, tanggal lahir, hubungan dengan pegawai -&gt; merupakan entitas lemah karena keberadaannya tergantung dari entitas kuat pegawai.</li>\n</ol>\n<p>&nbsp;</p>\n<ul>\n<li>Menemukan atribut.</li>\n</ul>\n<p>Atribut adalah merupakan sifat-sifat atau karakteristik pada suatu entitas. Nama atribut ini identik dengan nama kolom atau field pada suatu tabel dalam basis data.&nbsp; Atribut dapat dibedakan menjadi beberapa macam antara lain adalah:</p>\n<ol>\n<li>Simple Attribute dan Composite Attribute</li>\n<li>Single Valued Attribute dan Multi Valued Attribute</li>\n<li>Mandatory Attribute</li>\n<li>Derived Attribute (Attribut Turunan)</li>\n<li>Key Attribute (Atribut Kunci)</li>\n</ol>\n<p>&nbsp;</p>\n<p>Adapaun untuk menemukan atribut dapat dilakukan melalui langkah-langkah dibawah ini yaitu : 1. Tentukan dan lengkapi karakteristik dari tiap-tiap entitas&nbsp;</p>\n<ol start=\"2\">\n<li>Dari setiap karakteristik tersebut tentukan termasuk atribut apa</li>\n<li>Gambarkan entitas beserta atributnya dengan notasi yang sesuai</li>\n</ol>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar1.png\" /></p>\n\n<p><center>Gambar 01. Diagram struktur entitas beserta atributnya</center></p>\n<p>&nbsp;</p>\n<p>RANGKUMAN</p>\n<p>&nbsp;</p>\n<p>Diagram relasi entitas atau entity-relationship diagram (ERD) adalah suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasi tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut. Untuk menggambarkan ER diagaram setidaknya ada tiga langkah yang harus dilakukan oleh perancang basis data yaitu:</p>\n<p>1) Menemukan atau mendefinisikan Entitas.</p>\n<p>2) Menemukan atau mendefinisikan atribute.</p>\n<p>3) Menemukan atau mendefinisikan Relasi.</p>\n<p>4) Menggambarkan ERD menggunakan notasi-notasi standar.</p>\n<p>Langkah-langkah dilakukan untukmenemukan atau mendefinisikan Entitas yaitu:</p>\n<p>1) membuat ilustrasi cerita (role of bussiness) sistem basis data.</p>\n<p>2) menandai setiap objek yang diwakili oleh kata benda dari ilustrasi tersebut.</p>\n<p>3) Untuk setiap objek atau entitas tersebut yakinkan bahwa&nbsp; telah memiliki karakteristik sebagai atribut.</p>\n<p>4) menentukan objek yang merupakan entitas, Jika memiliki karakteristik maka menjadi sebuah entitas.</p>\n<p>Adapun untuk menemukan atribut dapat dilakukan melalui langkah-langkah berikut yaitu :</p>\n<p>1) Mentukan dan melengkapi karakteristik dari tiap-tiap entitas</p>\n<p>2) Dari setiap karakteristik tersebut tentukan termasuk atribut apa.</p>\n<p>3) Gambarkan entitas beserta atributnya dengan notasi yang sesuai.</p>'),
(2, 2, 'Relasi Antar Entitas', '<p><center>Relasi Antar Entitas</center></p>\n<p>&nbsp;</p>\n<ul>\n<li>Definisi ERD</li>\n</ul>\n<p>Diagram relasi entitas atau entity-relationship diagram (ERD) adalah suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasi tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut. ERD merupakan model jaringan yang menggunakan susunan data yang disimpan dalam sistem secara abstrak. ERD berupa model data konseptual, yang merepresentasikan data dalam suatu organisasi.ERD menekankan pada struktur dan relationship data.</p>\n<p>Untuk menggambarkan ER diagaram setidaknya ada tiga langkah yang harus dilakukan oleh perancang basis data yaitu:</p>\n<ol>\n<li>Menemukan atau mendefinisikan Entitas</li>\n<li>Menemukan atau mendefinisikan atribute</li>\n<li>Menemukan atau mendefinisikan Relasi</li>\n<li>Menggambarkan ERD menggunakan notasi-notasi standar.</li>\n</ol>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<ul>\n<li>Relasi</li>\n</ul>\n<p>Relasi menyatakan hubungan antara dua atau beberapa entitas. Setiap relasi mempunyai batasan (constraint) terhadap kemungkinan kombinasi entitas yang berpartisipasi. Batasan tersebut ditentukan dari situasi yang diwakili relasi tersebut. Ragam atau jenis relasi dibedakan menjadi beberapa macam antara lain adalah :</p>\n<ol>\n<li>Relasi Binary. Relasi binary merupakan relasi antara dua entitas. Relasi binary ini dibedakan menjadi : ? Relasi One-to-one (notasi 1:1) ? Relasi One-to-many (notasi 1:N) atau many-to-one (notasi N:1) ? Relasi Many-to-many (notasi M:N)</li>\n<li>Relasi Ternary. Relasi ternary adalah merupakan relasi antara tiga entitas atau lebih.</li>\n</ol>\n<p>&nbsp;</p>\n<p>Dalam Relasi One-to-one (1:1) setiap atribute dari satu entitas berpasangan dengan satu attribute dari entitas yang direlasikan. Dalam relasi One-to-many (1:N) atau many-to-one (N:1) satu atribute berelasi dengan beberapa atribute dari entitas yang direlasikan. Dalam Many-to-many (M:N) satu atribute berelasi dengan beberapa atribute dari entitas yang direlasikan. Begitu pula sebaliknya.</p>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar2.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 02. Ragam relasi antar entitas</p>\n<p>Sebagaimana entias dalam relasi juga dapat dibedakan menjadi relasi kuat dan relasi lemah. gambar dibawah ini menjelaskan notasi umum untuk relasi kuat dan relasi lemah.</p>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar3.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 03. Notasi relasi entitas untuk entitas kuat (b) dan entitas lemah (c)</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<ul>\n<li>Batasan Partisipasi</li>\n</ul>\n<p>Batasan partisipasi atau batasan hubungan entitas menjelaskan bagaimana data itu berelasi, batasan ini menentukan bagaimana (harus ataukah tidak) berpartisipasi suatu entitas dengan relasinya pada entitas lain.</p>\n<p>Batasan partisipasi dibedakan menjadi dua yaitu :</p>\n<p>1) Partisipasi Total (harus berpartisipasi)</p>\n<p>2) Partisipasi Parsial (tidak harus berpartisipasi)</p>\n<p>Contoh relasi yang merupakan partisipasi total adalah relasi antara pegawai dengan departemen dengan nama relasi bekerja untuk dan partisipasi total disisi pegawai. Dari diskripsi basis data disebutkan bahwa :&nbsp;&nbsp; &ldquo;Semua pegawai harus bekerja di bawah suatu departemen&rdquo;</p>\n<p>Dari pernyataan diatas mengindikasikan bahwa relasi disisi pegawai adalah relasi total yang ditandai dengan kata kunci harus.</p>\n<p>Untuk menggambarkan relasi dengan partisipasi total tersebut dapat dilakukan dengan dua pendekatan yaitu:</p>\n<p>? Menggunakan garis ganda pada relasi disisi pegawai</p>\n<p>? Menggunakan satu garis pada relasi disisi pegawai digabungkan dengan minimum 1 (minimum bekerja pada 1 departemen)</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar4.png\" /></p>\n<p>Gambar 04. Relasi dengan batasan partisipasi total</p>\n<p>&nbsp;</p>\n<p>Contoh relasi yang merupakan partisipasi parsial adalah relasi antara pegawai dengan departemen dengan nama relasi mengepalai daan partisipasi parsial&nbsp; disisi pegawai. Dari diskripsi basis data disebutkan bahwa :</p>\n<p>&ldquo;Beberapa pegawai mengepalai sebuah departemen (setiap pegawai tidak harus mengepalai&nbsp; suatu departemen) &ldquo;</p>\n<p>Dari pernyataan diatas mengindikasikan bahwa relasi disisi pegawai adalah mempunyai partisipasi parsial. Hal ini ditandai dengan kata kunci (beberapa pegawai ...... atau tidak harus.....). Untuk menggambarkan relasi dengan partisipasi parsial tersebut dapat dilakukan dengan dua pendekatan yaitu:</p>\n<p>&nbsp;</p>\n<p>? Menggunakan satu garis pada relasi disisi pegawai</p>\n<p>? Menggunakan satu garis pada relasi disisi pegawai digabungkan dengan minimum 0 (tidak mengepalai departemen)</p>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar5.png\" /></p>\n<p>Gambar 05. Relasi dengan batasan (constraint) partisipasi parsial</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<ul>\n<li>Menemukan Relasi.</li>\n</ul>\n<p>Beberapa langkah yang dapat dilakukan untuk menemukan atau mengidentifikasi relasi yaitu antara lain sebagai berikut:</p>\n<ol>\n<li>Dari gambaran cerita sistem, tandai setiap hubungan yang diwakili oleh kata kerja yang ada di dalam ilustrasi beserta entitas yang berhubungan</li>\n<li>Identifikasikan rasio kardinalitas dari setiap hubungan</li>\n<li>Identifikasikan batasan partisipasi dari setiap hubungan yang ada berikut kemungkinan atribut yang muncul dari setiap hubungan</li>\n<li>Gambarkan hubungan tersebut dalam bentuk notasi diagram dan gabungkan dengan notasi Entitas dan atribut yang dibuat sebelumnya Sebagai contoh adalah &ldquo;Temukan relasi untuk Sistem Kepegawaian di perusahaan A dengan ( lihat kembali diskripsi sistem basis data diatas) ?&rdquo;</li>\n</ol>\n<p>&nbsp;</p>\n<p>Langkah-langkah penyelesaian adalah :</p>\n<ol>\n<li>Langkah 1: dari gambaran cerita sistem, tandai dan tentukan setiap hubungan yang diwakili oleh kata kerja yang ada di dalam ilustrasi dan entitas yang berhubungan</li>\n<li>Identifikasi hubungan antara entitas. Indentifikasi hubungan dilakukan dengan membuat tabel sepeti terlihat di bawah ini. Hubungan berlangsung dua arah dari entitas 1 ke entitsas 2 dan sebaliknya. Kata kunci hubungan satu sisi menggunakan kata aktif dan dari sisi sebaliknya menggunakan kata kunci pasif.</li>\n</ol>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar6.png\" /></p>\n<p>Tabel 01. Identifikasi hubungan antara dua entitas dua arah</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar7.png\" /></p>\n<p>Tabel 02. Identifikasi hubungan antara dua entitas satu arah</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar8.png\" /></p>\n<p>Tabel 03. Identifikasikan rasio kardinalitas dari setiap hubungan</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Dari tabel Identifikasikan rasio kardinalitas untuk setiap hubungan diatas dapat digambarkan diagram relasi antar entitas, seperti terlihat dalam gambar dibawah ini :&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar9.png\" /></p>\n<p>Gambar 06. Diagram relasi&nbsp; entitas pegawai dan departemen</p>\n<p>&nbsp;</p>\n<p>Relasi antar entitas juga dapat diwujudkan dengan melibatkan identifikasikan batasan partisipasi dari setiap hubungan yang ada. Tabel dibawah ini emnejelaskn relasi yang melibatkan banyaknya partisipasi (minimal dan maksimal).</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar10.png\" /></p>\n<p>Tabel 04. Indentifikasi batasan partisipasi (min, max) antara dua entitas</p>\n<p>&nbsp;</p>\n<p>Dengan cara yang sama dapat ditemukan digambarkan relasi entitas-entitasnya. Gambar dibawah ini menjelaskan ER diagram secara lengkap untuk sistem kepegawaian di perusahaan A.</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar11.png\" /></p>\n<p>Gambar 07. Entity relationship diagram sistem basis data kepegawaian.</p>\n<p>RANGKUMAN</p>\n<p>&nbsp;</p>\n<p>Relasi menyatakan hubungan antara dua atau beberapa entitas. Setiap relasi mempunyai batasan (constraint) terhadap kemungkinan kombinasi entitas yang berpartisipasi. Batasan partisipasi atau batasan hubungan entitas menjelaskan bagaimana data itu berelasi, batasan ini menentukan bagaimana (harus ataukah tidak) berpartisipasi suatu entitas dengan relasinya pada entitas lain.</p>\n<p>Langkah-langkah yang dilakukan untuk menemukan atau mengidentifikasi relasi yaitu :</p>\n<p>1) Dari gambaran cerita sistem, tandai setiap hubungan yang diwakili oleh kata kerja yang ada di dalam ilustrasi tersebut beserta entitas yang berhubungan.</p>\n<p>2) mengidentifikasi rasio kardinalitas dari setiap hubungan.</p>\n<p>3) mengidentifikasikan batasan partisipasi dari setiap hubungan yang ada berikut kemungkinan atribut yang muncul dari setiap hubungan.</p>\n<p>4) Menggambarkan hubungan tersebut dalam bentuk notasi diagram dan menggabungkan dengan notasi Entitas dan atribut yang dibuat sebelumnya. .</p>\n<p>&nbsp;</p>'),
(3, 3, 'Mapping Relasi Entitas ke Relasi Tabel', '<p><center>Mapping Relasi Entitas ke Relasi Tabel</center></p>\n<p>&nbsp;</p>\n<ul>\n<li>Algoritma Mapping Relasi Entitas (ER) Ke Relasi Tabel.</li>\n</ul>\n<p>&nbsp;</p>\n<p>Di dalam basis data yang menjadi pusat perhatian dan intisari sistem adalah tabel dan relasinya. Istilah tabel ini muncul dari abstraksi data pada level physical. Tabel ini sama artinya dengan entitas dari model data pada level konseptual. Setiap orang bisa membuat tabel tetapi membuat tabel yang baik tidak semua orang dapat melakukannya. Kebutuhan akan membuat tabel yang baik ini ini melahirkan beberapa teori atau metode antara lain ialah mapping ERto table dan Normalisasi.</p>\n<p>&nbsp;</p>\n<p>Langkah-Langkah Membuat Erd</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\n<ol>\n<li>Mengidentifikasikan dan menetapkan seluruh himpunan entitas yang akan terlibat.</li>\n<li>Menentukan atribut-atribut key dari masing masing himpunan entitas.</li>\n<li>Mengidentifikasikan dan menetapkan seluruh himpunan relasi diantara himpunan entitas yang ada beserta foreign key-nya.</li>\n<li>Menentukan derajat dan cardinality rasio relasi untuk setiap himpunan relasi.</li>\n<li>Melengkapi himpunan relasi dengan atribut-atribut yang bukan kunci (non-key).</li>\n</ol>\n<p>&nbsp;</p>\n<p>Pada uraian materi ini akan menjelaskan mapping ER ke tabel sedangkan topik normalisasi akan dijelaskan dalam kegiatan 6. Algoritma atau Langkahlangkah yang dilakukan untuk memetakan ER diagram ke tabel relasional yaitu sebagai berikut:</p>\n<p>&nbsp;</p>\n<ol>\n<li>Untuk setiap entitas kuat EK, buat tabel baru EK yang menyertakan seluruh simple atribut dan simple atribut dari composite atribut yang ada. Pilih salah satu atribut kunci sebagai primary key</li>\n<li>Untuk setiap entitas lemah EH, buat tabel baru EH dengan mengikutsertakan seluruh simple atribut. Tambahkan primary key dari entitas kuatnya (owner entity type) yang akan digunakan sebagai primary key bersama-sama partial key dari entitas lemah</li>\n<li>Untuk setiap multivalued atribut R, buatlah tabel baru R yang menyertakan atribut dari multivalue tersebut. Tambahkan primary key dari relasi yang memiliki multivalue tersebut. Kedua atribut tersebut membentuk primary key dari tabel R</li>\n<li>Untuk setiap relasi binary 1:1, tambahkan primary key dari sisi yang lebih &ldquo;ringan&rdquo; ke sisi (entitas) yang lebih &ldquo;berat&rdquo;. Suatu sisi dianggap lebih &ldquo;berat&rdquo; timbangannya apabila mempunyai partisipasi total. Tambahkan juga simple atribut yang terdapat pada relasi tersebut ke sisi yang lebih &ldquo;berat&rdquo;. Apabila kedua partisipasi adalah sama-sama total atau samasama partial, maka dua entitas tersebut boleh digabung menjadi satu tabel</li>\n<li>Untuk setiap relasi binary 1:N yang tidak melibatkan entitas lemah, tentukan mana sisi yang lebih &ldquo;berat&rdquo; (sisi N). Tambahkan primary key dari sisi yang &ldquo;ringan&rdquo; ke tabel sisi yang lebih &ldquo;berat&rdquo;. Tambahkan juga seluruh simple atribut yang terdapat pada relasi biner tersebut</li>\n<li>Untuk setiap relasi binary M:N, buatlah tabel baru R dengan atribut seluruh simple atribut yang terdapat pada relasi biner tersebut. Tambahkan primary key yang terdapat pada kedua sisi ke tabel R. Kedua foreign key yang didapat dari kedua sisi tersebut digabung menjadi satu membentuk primary key dari tabel R 7. Untuk setiap relasi lebih dari dua entitas, n-nary (ternary), meliputi dua alternatif yaitu:</li>\n</ol>\n<ul>\n<li>Buatlah tabel R yang menyertakan seluruh primary key dari entitas yang ikut serta. Sejumlah n foreign key tersebut akan membentuk primary key untuk tabel R. Tambahkan seluruh simple atribut yang terdapat pada relasi n-ary tersebut.</li>\n<li>Mengubah bentuk relasi ternary menjadi entitas lemah, kemudian memperbaiki relasi yang terjadi antara entitas lemah tersebut dengan entitas-entitas kuatnya dan melakukan algoritma mapping sesuai dengan aturan mapping.</li>\n</ul>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<ul>\n<li>Contoh Mapping ER Ke Tabel Sistem Basis Data Perusahaan</li>\n</ul>\n<p>Uraian dibawah ini menjelaskan urutan langkah memetakan ER ke relasi tabel. Kasus yang diambil adalah sistem basis data perusahaan A seperti dijelaskan dalam kegiatan belajar 1 dan 2.</p>\n<p>Soal :&nbsp;&nbsp;</p>\n<p>? Bacalah kembali uraian materi dan kegiatan belajar 1 dan 2.</p>\n<p>? Berdasarkan uraian materi tentang algoritma mapping ER ke tabel buatlah relasi antar tabel dari ER diagram sistem basis data perusahaan A seperti telah dijelaskan dalam uraian materi kegiatan belajar 1 dan 2.</p>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar12.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 08. ER Diagram sistem basis data perusahaan A.</p>\n<p>&nbsp;</p>\n<p>Penyelesaian :</p>\n<ol>\n<li>Berdasarkan algoritma nomor 1 aturan tentang entitas kuat maka lakukan beberapa langkah dibawah ini :</li>\n<li>Untuk setiap entitas kuat Entitas Kuat, buat tabel baru Eks.</li>\n<li>Sertakan seluruh simple atribut.</li>\n<li>Sertakan simple atribut dari composite atribut yang ada.</li>\n<li>Pilih salah satu atribut kunci sebagai primary key.</li>\n</ol>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar13.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 09. Mapping ER ke tabel untuk entitas kuat</p>\n<ol>\n<li>Berdasarkan algoritma nomor 2 aturan tentang entitas entitas lemah. Untuk setiap entitas lemah EH, laakukan beberapa langkah dibawah ini :</li>\n<li>Buat tabel baru EH.</li>\n<li>Sertakan seluruh simple atribut</li>\n<li>Tambahkan primary key dari entitas kuatnya (owner entity type) yang akan digunakan sebagai primary key bersama-sama partial key dari entitas lemah.</li>\n</ol>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar14.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 10. Mapping ER ke tabel untuk entitas lemah.</p>\n<p>&nbsp;</p>\n<ol>\n<li>Berdasarkan algoritma nomor 2 aturan tentang relasi multivalue atribut. Untuk setiap multivalued atribut R,</li>\n<li>Buatlah tabel baru R yang menyertakan atribut dari multivalue tersebut.</li>\n<li>Tambahkan primary key dari relasi yang memiliki multivalue tersebut. Kedua atribut tersebut membentuk primary key dari tabel R.</li>\n</ol>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar15.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 11. Mapping multivalue attribute.</p>\n<p>&nbsp;</p>\n<ol>\n<li>Untuk setiap relasi binary 1:1, tambahkan primary key dari sisi yang lebih &ldquo;ringan&rdquo; ke sisi (entitas) yang lebih &ldquo;berat&rdquo;. Suatu sisi dianggap lebih &ldquo;berat&rdquo; timbangannya apabila mempunyai partisipasi total. Tambahkan juga simple atribut yang terdapat pada relasi tersebut ke sisi yang lebih &ldquo;berat&rdquo;.</li>\n</ol>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar16.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 12. Mapping relasi binary 1:1</p>\n<p>&nbsp;</p>\n<ol>\n<li>Untuk setiap relasi binary 1:N yang tidak melibatkan entitas lemah, tentukan mana sisi yang lebih &ldquo;berat&rdquo; (sisi N). Tambahkan primary key dari sisi yang &ldquo;ringan&rdquo; ke tabel sisi yang lebih &ldquo;berat&rdquo;. Tambahkan juga seluruh simple atribut yang terdapat pada relasi biner tersebut.</li>\n</ol>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar17.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 13. Mapping ER to tabel relasi one to many.</p>\n<p>&nbsp;</p>\n<ol>\n<li>Untuk setiap relasi binary M:N, buatlah tabel baru R dengan atribut seluruh simple atribut yang terdapat pada relasi biner tersebut. Tambahkan primary key yang terdapat pada kedua sisi ke tabel R. Kedua foreign key yang didapat dari kedua sisi tersebut digabung menjadi satu membentuk primary key dari tabel R.</li>\n</ol>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar18.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 14. Mapping ER to tabel relasi one to many.</p>\n<p>&nbsp;</p>\n<ol>\n<li>Untuk setiap relasi n-ary (ternary),</li>\n<li>Buatlah tabel R yang menyertakan seluruh primary key dari entitas yang ikut serta. Sejumlah n foreign key tersebut akan membentuk primary key untuk tabel R. Tambahkan seluruh simple atribut yang terdapat pada relasi n-ary tersebut.</li>\n<li>Sama dengan proses yang dilakukan untuk langkah ke 6. Karena dalam ER-D perusahaan ini tidak ada relasi n-ary maka langkah ini tidak dilakukan.</li>\n</ol>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar19.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 15. Mapping untuk relasi N-narry.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Dengan menggunakan cara yang sama dapat dilakukan pemetaan ER diagram ke tabel untuk setiap relasi entitas dari ER diagram sistem basis data perusahaan A.</p>\n<p>&nbsp;</p>\n<p><img src=\"http://localhost:8350/bukuku/gambar20.png\" /></p>\n<p>&nbsp;</p>\n<p>Gambar 16. Relasi Tabel hasil pemetakan ERD.</p>\n<p>&nbsp;</p>\n<p>RANGKUMAN</p>\n<p>Di dalam basis data yang menjadi pusat perhatian dan intisari sistem adalah tabel dan relasinya. Istilah tabel ini muncul dari abstraksi data pada level physical. Tabel ini sama artinya dengan entitas dari model data pada level konseptual.Kebutuhan akan membuat tabel yang baik ini ini melahirkan beberapa teori atau metode antara lain ialah mapping ERto table&nbsp; dan Normalisasi. Algoritma atau Langkah-langkah yang dilakukan untuk memetakan ER diagram ke tabel relasional meliputi tujuh&nbsp; aturan yaitu :</p>\n<p>1) ketentuan entitas kuat.</p>\n<p>2) ketentuan entitas lemah.</p>\n<p>3) ketentuan atribut muultivalue.</p>\n<p>4) Ketentuan relasi binary one to one.</p>\n<p>5) ketentuan Ketentuan relasi binary one to many.</p>\n<p>6) Ketentuan relasi binary many to many.</p>\n<p>7) Ketentuan relasi ternary (n-narry).</p>\n<p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `bab_materi`
--

CREATE TABLE `bab_materi` (
  `id` int(10) NOT NULL,
  `imgpath` varchar(255) NOT NULL,
  `no` int(10) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bab_materi`
--

INSERT INTO `bab_materi` (`id`, `imgpath`, `no`, `title`) VALUES
(1, 'perancanganbasic', 1, 'Identifikasi Entitas dan Atribut'),
(2, 'definisinor', 2, 'Relasi Antar Entitas'),
(3, 'domaindantipedata', 3, 'Relasi Entitas ke Relasi Tabel');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(10) NOT NULL,
  `id_level` int(10) NOT NULL,
  `quiz` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `answer` enum('a','b','c','d','e') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `id_level`, `quiz`, `a`, `b`, `c`, `d`, `e`, `answer`) VALUES
(1, 1, 'ERD merupakan singkatan dari&hellip;', 'Equipment Relationship Diagram', 'Equipment Relatable Diagram', 'Entity Relative Diagram', 'Entity Relationship Diagram', 'Equipment Relative Diagram', 'd'),
(2, 1, 'Pengertian dari ERD adalah&hellip;', 'suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasi tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut.', 'suatu diagram dalam bentuk tulisan yang mengidentifikasi tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut.', 'suatu relasi dalam bentuk gambar atau simbol yang mengidentifikasi tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut.', 'suatu relasi dalam bentuk tulisan yang mengidentifikasi tipe dari entitas di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut.', 'suatu diagram dalam bentuk gambar atau simbol yang mengidentifikasi tipe dari relasi-relasi di dalam suatu sistem yang diuraikan dalam data dengan atributnya, dan menjelaskan hubungan atau relasi diantara entitas tersebut.', 'a'),
(3, 1, 'ERD berupa model data &hellip;&hellip;&hellip;yang merepresentasikan data dalam suatu organisasi.ERD menekankan pada struktur dan relationship data.', 'Intelektual', 'Strategis', 'Konseptual', 'Diagram', 'Transparant', 'c'),
(4, 1, 'ERD merupakan model jaringan yang menggunakan susunan data yang disimpan dalam sistem secara&hellip;', 'Jelas', 'Teratur', 'Abstrak', 'Rapi', 'Transparan', 'c'),
(5, 1, '<p>Untuk menggambarkan ER diagaram setidaknya ada tiga langkah yang harus dilakukan oleh perancang basis data yaitu, kecuali&hellip;</p>', 'Menemukan atau mendefinisikan Entitas ', 'Menemukan atau mendefinisikan Atribute', 'Menemukan atau mendefinisikan Relasi ', 'Menemukan atau mendefinisikan Diagram', 'Menggambarkan ERD menggunakan notasi-notasi standar', 'd'),
(6, 1, '<p>Ilustrasi atau gambaran cerita disebut juga dengan&hellip;</p>', 'Rule of business', 'Role of business', 'Illustration of business', 'Picture of business', 'Image of business', 'b'),
(7, 1, '<p>Berikut merupakan salah satu langkah-langkah yang dilakukan untuk menemukan atau mendefinisikan Entitas yaitu&hellip;</p>', 'Menggambarkan ERD menggunakan notasi-notasi standar.\r\n', 'Mentukan dan melengkapi karakteristik dari tiap-tiap entitas', 'Menggambarkan entitas beserta atributnya dengan notasi yang sesuai.', 'Menandai setiap objek yang diwakili oleh kata benda dari ilustrasi tersebut.', 'Menentukan jenis atribut disetiap karakteristik.', 'd'),
(8, 1, '<p>Pengertian dari atribut adalah&hellip;</p>', 'Entitas didalam sebuah kelas.\r\n', 'Sifat-sifat pada sebuah kelas.', 'Karakteristik pada suatu entitas.', 'Ciri khas dari sebuah entitas.', 'Perlengkapan dalam sebuah kelas.', 'c'),
(9, 1, '<p>Berikut merupakan macam-macam atribut, kecuali&hellip;</p>', 'Mandatory Attribute', 'Key Attribute', 'Dirrect Attribute', 'Derived Attribute', 'Simple Attribute dan Composite Attribute', 'c'),
(10, 1, '<p>Adapun untuk menemukan atribut dapat dilakukan melalui langkah-langkah berikut yaitu..</p>', 'Menentukan dan melengkapi karakteristik dari tiap-tiap entitas', 'Menandai setiap hubungan dalam entitas. ', 'Menentukan jenis entitas disetiap karakteristik.', 'Menggambarkan ERD menggunakan notasi-notasi standar', 'Melengkapi setiap entitas.', 'a'),
(12, 2, '<p>Hubungan antara dua atau beberapa entitas disebut&hellip;</p>', 'ERD', 'Diagram', 'Atribut', 'Relasi', 'Notasi', 'd'),
(13, 2, '<p>Relasi dibedakan menjadi dua, yaitu..</p>', 'Binary dan Temporary', 'Binary dan Ternary', 'Binary dan Integral', 'Temporary dan Ternary', 'Ternary dan Integral', 'b'),
(14, 2, '<p>Relasi antara dua entitas, adalah..</p>', 'Relasi Binary', 'Relasi Temporary', 'Relasi Ternary', 'Relasi Integral', 'Diagram', 'b'),
(15, 2, '<p>Relasi antara tiga entitas atau lebih, adalah..</p>', 'Relasi Binary', 'Relasi Temporary', 'Relasi Ternary', 'Relasi Integral', 'Diagram', ''),
(16, 2, '<p>Batasan partisipasi bisa disebut juga dengan&hellip;</p>', 'Batasan particular', 'Batasan relasi', 'Batasan investasi', 'Batasan hubungan', 'Batasan keluarga', 'd'),
(17, 2, '<p>Batasan partisipasi dibedakan menjadi dua yaitu, yaitu..</p>', 'Partisipasi Total dan Partisipasi Tidak Total', 'Partisipasi Keseluruhan dan Partisipasi Sebagian', 'Partisipasi Total dan Partisipasi Parsial', 'Partisipasi Kuat dan Partisipasi Lemah', 'Partisipasi Pegawai dan Partisipasi Departement', 'c'),
(18, 2, '<p>Menggunakan garis ganda pada relasi disisi pegawai merupakan salah satu pendekatan untuk menggambarkan relasi dengan partisipasi&hellip;</p>', 'Kuat', 'Total', 'Pegawai', 'Keseluruhan', 'Parsial', 'b'),
(19, 2, '<p>Menggunakan satu garis pada relasi disisi pegawai merupakan salah satu pendekatan untuk menggambarkan relasi dengan partisipasi&hellip;</p>', 'Tidak Total\r\n', 'Sebagian', 'Parsial', 'Lemah', 'Total', 'c'),
(20, 2, '<p>Setiap relasi mempunyai batasan terhadap kemungkinan kombinasi entitas yang berpartisipasi.Batasan disebut juga dengan&hellip;</p>', 'Limit', 'Constraint', 'Distance', 'Relation', 'Margin', 'b'),
(21, 2, '<p>Kata kunci hubungan satu sisi menggunakan &hellip;.. dan dari sisi sebaliknya menggunakan&hellip;&hellip;.</p>', 'Kata aktif, Kata aktif', 'Kata aktif, Kata pasif', 'Kata pasif, Kata pasif', 'Kata pasif, Kata aktif', 'Kata aktif maupun pasif, Kata pasif', 'b'),
(23, 3, '<p>Di dalam basis data yang menjadi pusat perhatian dan intisari sistem adalah &hellip;.</p>', 'Entitas dan Relasinya', 'Tabel dan Entitasnya', 'Data dan Tabelnya', 'Tabel dan Relasinya', 'Relasi dan Datanya', 'd'),
(24, 3, '<p>Istilah tabel muncul dari abstraksi data pada level...</p>', 'Intelektual', 'Konseptual', 'Equipment', 'Physical', 'Model', 'd'),
(25, 3, '<p>Tabel sama artinya dengan entitas dari model data pada level&hellip;</p>', 'Intelektual', 'Konseptual', 'Equipment', 'Physical', 'Model', 'b'),
(26, 3, '<p>Kebutuhan akan membuat tabel yang baik ini ini melahirkan beberapa teori atau metode antara lain ialah mapping ER to table dan&hellip;</p>', 'Konseptalitas', 'Entitas', 'Relasi', 'Normalisasi', 'Konseptual', 'd'),
(27, 3, '<p>Langkah-langkah yang dilakukan untuk memetakan ER diagram ke tabel relasional meliputi tujuh aturan yaitu, kecuali..</p>', 'ketentuan atribut muultivalue', 'ketentuan entitas kuat.', 'ketentuan entitas lemah.', 'Ketentuan entitas one sided value', 'Ketentuan relasi ternary (n-narry).', 'd'),
(28, 3, '<p>Satu buah relationship yang menghubungkan dua buah entity disebut&hellip;</p>', 'Ternary', 'Unary', 'Binary', 'Atribut', 'Relasi', 'c'),
(29, 3, '<p>Perbandingan antara entity pertama dengan entity kedua berbanding satu banding satu disebut&hellip;</p>', 'One to One', 'One to Many', 'Many to One', 'Many to Many', 'One to One and Many', 'a'),
(30, 3, '<p>Pengertian dari relasi many to one yaitu..</p>', 'perbandingan antara entity pertama dengan entity kedua berbanding banyak banding satu.', 'perbandingan antara entity pertama dengan entity kedua berbanding satu banding satu.', 'perbandingan antara entity pertama dengan entity kedua berbading satu banding banyak.', 'perbandingan antara entity pertama dengan entity kedua berbanding banyak banding ', 'perbandingan antara entity pertama dengan entity kedua berbanding dua banding satu.', 'a'),
(31, 3, '<p>Contoh One to Many adalah&hellip;</p>', 'Mahasiswa Diajarkan oleh Dosen', 'Pegawai Mengerjakan Projek', 'Pasien Ditempatkan Diruangan', 'Beberapa Pegawai Mengerjakan Projek', 'Beberapa Tugas Dikerjakan oleh Beberapa Siswa', 'b'),
(32, 3, '<ol>\r\n<li>Berikut merupakan langkah langkah membuat erd</li>\r\n</ol>\r\n<ul>\r\n<li>Mengidentifikasikan dan menetapkan seluruh himpunan entitas yang akan terlibat.</li>\r\n<li>Menentukan atribut-atribut key dari masing masing himpunan entitas.</li>\r\n<li>Mengidentifikasikan dan menetapkan seluruh himpunan relasi diantara himpunan entitas yang ada beserta foreign key-nya.</li>\r\n<li>Menentukan derajat dan cardinality rasio relasi untuk setiap himpunan relasi.</li>\r\n<li>Melengkapi himpunan relasi dengan atribut-atribut yang bukan kunci (non-key).</li>\r\n</ul>\r\n<p>&nbsp; &nbsp; &nbsp;Urutan yang benar adalah&hellip;</p>', '1-2-3-4-5', '5-4-3-2-1', '3-4-2-1-5', '1-3-5-2-4', '3-2-5-4-1', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_level`
--

CREATE TABLE `quiz_level` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_level`
--

INSERT INTO `quiz_level` (`id`, `title`, `content`) VALUES
(1, 'Bab 1', 'Identifikasi Entitas dan Atribut'),
(2, 'Bab 2', 'Relasi Antar Entitas'),
(3, 'Bab 3', 'Mapping Relasi Entitas ke Relasi Tabel');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_result`
--

CREATE TABLE `quiz_result` (
  `id` int(10) NOT NULL,
  `id_quiz_level` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `score` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_result`
--

INSERT INTO `quiz_result` (`id`, `id_quiz_level`, `username`, `score`) VALUES
(2, 1, 'jondes', 10),
(3, 1, 'jondes', 10),
(4, 1, 'helo', 0),
(5, 1, 'helo', 10),
(6, 2, 'jondes', 0),
(7, 2, 'jondes', 100),
(8, 1, 'hehe', 10),
(9, 1, 'joo', 10),
(10, 2, 'hellya', 0),
(11, 2, 'muah', 100),
(12, 1, 'hanan', 30),
(13, 3, 'hanan afif', 30),
(14, 1, 'AtLast', 0),
(15, 1, '', 0),
(16, 1, '', 0),
(17, 1, 'luky', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bab_content`
--
ALTER TABLE `bab_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bab` (`id_bab`);

--
-- Indexes for table `bab_materi`
--
ALTER TABLE `bab_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `quiz_level`
--
ALTER TABLE `quiz_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_quiz_level` (`id_quiz_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bab_content`
--
ALTER TABLE `bab_content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bab_materi`
--
ALTER TABLE `bab_materi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `quiz_level`
--
ALTER TABLE `quiz_level`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quiz_result`
--
ALTER TABLE `quiz_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bab_content`
--
ALTER TABLE `bab_content`
  ADD CONSTRAINT `bab_content_ibfk_1` FOREIGN KEY (`id_bab`) REFERENCES `bab_materi` (`id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `quiz_level` (`id`);

--
-- Constraints for table `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD CONSTRAINT `quiz_result_ibfk_1` FOREIGN KEY (`id_quiz_level`) REFERENCES `quiz` (`id_level`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
