class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Pantai Parai',
    location: 'Bangka',
    description:
    'Berjarak 40km dari pusat kota Pangkalpinang, pantai Parai Tenggiri merupakan pantai yang terkenal di pulau Bangka',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 25000',
    imageAsset: 'images/parai.jpg',
    imageUrls: [
      'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/pantai-parai-tenggiri2.jpg',
      'https://asset.kompas.com/crops/F0ZNj6GwxGrfZcRew1bXIFrYHU4=/0x0:739x493/750x500/data/photo/2020/03/10/5e671dfdb91e0.jpg',
      'https://akcdn.detik.net.id/community/media/visual/2021/02/04/dev-pantai-parai-tenggiri-satu-lagi-pantai-cantik-dari-bangka.jpeg?w=600&q=90',
      'https://cdn-2.tstatic.net/bangka/foto/bank/images/istana-pool-villa-spa-bangka-resort.jpg',
    ],
  ),
  TourismPlace(
    name: 'Bangka Botanical Garden',
    location: 'Pangkal Pinang',
    description:
    'Bangka Botanical Garden (BBG) merupakan lahan pengembangan holtikultura, peternakan, penyediaan bibit dan pakan ternak yang memanfaatkan lahan eks tambang timah dan lahan kritis berupa lahan gambut dan berpasir',
    openDays: 'Open Everyday',
    openTime: '08:00 - 18:00',
    ticketPrice: 'Free',
    imageAsset: 'images/bangka-botanical-garden.jpg',
    imageUrls: [
      'https://wonderful.pangkalpinangkota.go.id/wp-content/uploads/2020/10/entrance-780x470.jpg',
      'https://www.bangkatour.com/wp-content/uploads/2012/06/agrowisata.jpg',
      'https://www.bangkatour.com/wp-content/uploads/2012/06/Bangka-Botanical-Garden.jpg',
      'https://www.bangkatour.com/wp-content/uploads/2012/06/bangka-botanical-garden-01.jpg'
    ],
  ),
  TourismPlace(
    name: 'Museum Timah',
    location: 'Pangkal Pinang',
    description:
    'Museum yang menjadi kebanggaan masyarakat Provinsi Bangka Belitung ini merupakan satu-satunya museum timah yang ada di Indonesia, bahkan di Asia. Museum ini didirikan pada tahun 1958 dengan tujuan mencatat sejarah pertimahan di Bangka Belitung dan memperkenalkannya pada masyarakat luas',
    openDays: 'Open Monday - Saturday',
    openTime: '09:00 - 15:00',
    ticketPrice: 'Rp 5000',
    imageAsset: 'images/museum-timah.jpg',
    imageUrls: [
      'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2017/11/belitung-31.jpg',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/db/8c/b7/ada-prasasti.jpg?w=800&h=-1&s=1',
      'https://ilviaa.files.wordpress.com/2015/05/museum-timah-di-kota-pangkalpinang-bangka-1.jpg?w=600&h=400',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/d3/a2/3b/photo1jpg.jpg?w=1400&h=-1&s=1',
    ],
  ),
  TourismPlace(
    name: 'Pagoda Puri Tri Agung',
    location: 'Bangka',
    description:
    'Menghadap langsung ke Laut Natuna Utara, Puri Tri Agung ini memberikan sensasi wisata religi yang tak biasa. Tak hanya beribadah dan belajar catatan sejarah Konghucu, kita juga bisa menikmati keindahan arsitektur bangunannya yang unik. Apalagi pekarangannya yang luas membuat kita leluasa menikmati hamparan lautan lepas yang bewarna biru tepat didepan mata.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Free',
    imageAsset: 'images/pagoda-puri-tri-agung.jpg',
    imageUrls: [
      'https://asset.kompas.com/crop/16x0:860x563/750x500/data/photo/2018/01/13/2465418372.jpg',
      'https://cdn.statically.io/img/liburdulu.com/f=auto%2Cq=70/wp-content/uploads/2020/10/1602097780_753_Menghadap-langsung-ke-Laut-Natuna-Utara-Puri-Tri-Agung-ini.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/09/e1/2a/a0/padepokan-puri-tri-agung.jpg',
      'https://siranselhitam.files.wordpress.com/2018/04/padepokan-pagoda-vihara-puri-tri-agung-sungailiat-bangka-belitung-5.jpg?w=1024&h=768'
    ],
  ),
  TourismPlace(
    name: 'Pantai Tongaci',
    location: 'Bangka',
    description:
    'Pantai tongaci adalah objek wisata pantai yang memiliki de locomotief, penangkaran penyu dan kafe di sungailiat, bangka belitung. Penyu-penyu yang berada di Pantai Tongaci merupakan penyu konservasi. Pantai Tongaci merupakan salah satu pantai yang bersih dengan pasir putih ',
    openDays: 'Open Everyday',
    openTime: '08:00 - 18:00',
    ticketPrice: 'Rp 10000',
    imageAsset: 'images/pantai-tongaci.jpg',
    imageUrls: [
      'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/pantai-tongaci-bangka-belitung.jpg',
      'https://akcdn.detik.net.id/community/media/visual/2018/04/26/7e689c8e-cd29-4193-a4a7-403bb1e19e75.jpeg?korean_alphabet=1',
      'https://1.bp.blogspot.com/-u-YgE_uqGgs/WdTYlY5DsUI/AAAAAAAAWCQ/IND3BI6Yo8UtJUuUd2IWsNNtp-gAuqvUQCEwYBhgL/s1600/20170910_6.jpg',
      'http://cdn-2.tstatic.net/tribunnews/foto/bank/images/pantai-tongaci_20160315_083617.jpg',
    ],
  ),
  TourismPlace(
    name: 'Pulau Kelapan',
    location: 'Bangka Selatan',
    description:
    'Pulau Kelapan ibarat surga di bawah laut, tempat yang cocok untuk menyaksikan keindahan wisata bawah laut Kabupaten Bangka Selatan. Berbagai jenis karang dan hewan laut tersembunyi di bawah laut Pulau Kelapan. Airnya sangat jernih dengan laut yang landai, panorama terumbu karang sudah tampak dari atas kapal merayu siapa saja untuk melompat dan berenang ke dalamnya. ',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'images/pulau-kelapan.jpg',
    imageUrls: [
      'https://3.bp.blogspot.com/-SE-HZ9xBNsI/WpzyOvBhl_I/AAAAAAAABiI/G06LKhjwasw8JHcuG6Dcki2Qe4xHZs_OACLcBGAs/s1600/Screenshot_20180305-142953_crop_540x404.png',
      'https://2.bp.blogspot.com/-GmGpf1cORRc/WpzyjEZUXII/AAAAAAAABiM/WmzMrGyGHEEDHmtWzSJEEgmFGTNqsFOvgCLcBGAs/s1600/Screenshot_20180305-142938_crop_539x518.png',
      'http://lensabangkabelitung.com/wp-content/uploads/2020/05/IMG_20200531_055922_copy_839x629-01.jpeg',
      'https://kebabelyuk.com/public/image/package/galery/a05230643cf9303e41e06c3763f2dcdd.jpg',
    ],
  ),
  TourismPlace(
    name: 'Pulau Ketawai',
    location: 'Bangka Tengah',
    description:
    'Di pulau ini pengunjung disuguhkan pemandangan pantai berpasir putih, pohon-pohon kelapa, suasana segar, dan bersih. Suasana di pulau ini membuat setiap pengunjung yang datang nyaman menghabiskan waktu bersama keluarga maupun teman.',
    openDays: 'Open Everyday',
    openTime: 'Open 24 Hours',
    ticketPrice: 'Free',
    imageAsset: 'images/ketawai.jpg',
    imageUrls: [
      'https://www.mall13.com/files/13/14/item_2071_314.jpg',
      'https://www.mall13.com/files/17/07/item_2071_707.jpg',
      'https://pbs.twimg.com/media/DrH4wkxU8AAWVPA?format=jpg&name=medium',
      'https://backpackerjakarta.com/wp-content/uploads/2018/01/pulau-ketawai-dari-atas.jpg'
    ],
  ),
  TourismPlace(
    name: 'Hutan Pelawan',
    location: 'Bangka Tengah',
    description:
    'Sesuai namanya, kawasan hutan ini didominasi oleh keberadaan pohon pelawan. Pohon berkayu merah yang disebut-sebut sebagai endemik Provinsi Bangka Belitung. Di Hutan Pelawan inilah tumbuh subur jamur pelawan yang dijadikan santapan lezat saat makan bedulang alias makan bersama di saung Desa Namang.',
    openDays: 'Open Everyday',
    openTime: '07:00 - 18:00',
    ticketPrice: 'Free',
    imageAsset: 'images/hutan-pelawan.jpg',
    imageUrls: [
      'https://assets-a2.kompasiana.com/statics/files/1428556868781526971.jpg?t=o&v=770',
      'https://m.radarbangka.co.id/gambar/berita/berita-menelusuri-hutan-pelawan-penghasil-madu-pahit-di-pulau-bangka-43756-l.jpg',
      'https://www.mongabay.co.id/wp-content/uploads/2015/05/Jamur_pelawan.jpg',
      'https://www.mongabay.co.id/wp-content/uploads/2015/05/pohon-pelawan.jpg'
    ],
  ),
  TourismPlace(
    name: 'Danau Kaolin',
    location: 'Bangka Selatan',
    description:
    'Sebuah fenomena alam langka dan unik dalam bentuk kolam air beraneka warna bisa Anda temukan di Desa Nibung, Kabupaten Bangka Selatan, Provinsi Kepulauan Bangka Belitung. Danau Kaolin, begitu masyarakat setempat menyebutnya. Danau ini merupakan galian bekas tambang yang setelah bertahun-tahun ditinggalkan dan akhirnya membentuk kolam air beraneka warna',
    openDays: 'Open Everyday',
    openTime: '07:30 - 18:00',
    ticketPrice: 'Free',
    imageAsset: 'images/danau-kaolin.jpg',
    imageUrls: [
      'https://www.len-diary.com/wp-content/uploads/2018/01/Kaolin-Bangka-1024x683.jpg',
      'https://asset.kompas.com/data/photo/2016/10/30/2233574Danau-Kaolin-di-lahan-bekas-tambang-timah-di-Desa-Nibung-Bangka-Selatan-Kepulauan-Bangka-Belitung-3-780x390.jpg',
      'https://fjbbabel.com/wp-content/uploads/2020/02/kulong-biru-dan-kaolin-1.jpg',
      'https://fjbbabel.com/wp-content/uploads/2020/02/kulong-biru-dan-kaolin-3.jpg'
    ],
  ),
];