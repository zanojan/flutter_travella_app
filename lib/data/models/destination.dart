// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/rendering.dart';

class Destination {
  String id;
  String image;
  String name;
  String location;
  double rating;
  String description;
  List<String> logo;
  final Gradient gradient;

  Destination({
    required this.id,
    required this.image,
    required this.name,
    required this.location,
    required this.rating,
    required this.description,
    required this.logo,
    required this.gradient,
  });
}

var destionationList = [
  Destination(
    id: "pantai",
    image: 'assets/pantai_detail.png',
    name: 'Pantai Anyer',
    location: 'Kab.Serang, Banten',
    rating: 4.5,
    description: 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best.',
    logo: ['assets/motor.png', 'assets/mobil.png', 'assets/bis.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff86B7A4),
        Color(0xff97BDA3),
        Color(0xffA1C1A2),
        Color(0xffADC5A1),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "gunung",
    image: 'assets/gunung.png',
    name: 'MT.Galunggung',
    location: 'Kab.Tasikmalaya, Jawa Barat',
    rating: 5.0,
    description: 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best.',
    logo: ['assets/motor.png', 'assets/mobil.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff8DAB9A),
        Color(0xff8DAB9A),
        Color(0XFFB1AA7C),
        Color(0XFF8BAB9B),
        Color(0XFFAEAD86),
        
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "pemandian",
    image: 'assets/pemandian.png',
    name: 'Cipanas',
    location: 'Kab.Tasikmalaya, Jawa Barat',
    rating: 5.0,
    description: 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best.',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "Pura",
    image: 'assets/bali.png',
    name: 'Pura Ulun',
    location: 'Kabupaten Tabanan, Bali',
    rating: 4.9,
    description: 'Pura Ulun Danu Beratan di Bedugul adalah destinasi ikonik Bali yang menawarkan keindahan pura terapung di tepi Danau Beratan, dikelilingi pegunungan sejuk dan panorama alam yang memukau. Nikmati pengalaman spiritual, spot foto Instagramable, dan aktivitas seru seperti berperahu di danau. Cocok untuk wisata alam dan budaya!',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "Candi",
    image: 'assets/borobudur.png',
    name: 'Candi Borobudur',
    location: 'Kabupaten Magelang, Jawa Tengah',
    rating: 4.7,
    description: 'Candi Borobudur adalah mahakarya dunia di Magelang, Jawa Tengah, yang merupakan candi Buddha terbesar di dunia. Dengan arsitektur megah berbentuk mandala dan pemandangan indah, Borobudur menawarkan pengalaman spiritual, sejarah, dan budaya yang tak terlupakan. Destinasi wajib bagi pecinta warisan dunia!',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "Pulau",
    image: 'assets/pulau_komodo.png',
    name: 'TN.Komodo',
    location: 'NTT, Indonesia',
    rating: 4.8,
    description: 'Taman Nasional Komodo di Nusa Tenggara Timur adalah surga eksotis yang menjadi rumah bagi Komodo, kadal purba terbesar di dunia. Selain menyaksikan hewan langka ini, Anda dapat menikmati keindahan pantai berpasir merah muda, snorkeling, diving, dan trekking di lanskap alam yang menakjubkan. Destinasi sempurna untuk petualangan unik!',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "Danau",
    image: 'assets/danau_toba.png',
    name: 'Danau Toba',
    location: 'Simalungun, Sumatera Utara',
    rating: 4.7,
    description: 'Danau Toba di Sumatera Utara adalah danau vulkanik terbesar di Asia Tenggara dan salah satu yang terbesar di dunia. Terletak di kaldera gunung berapi purba, danau ini memiliki pemandangan alam yang memukau dengan air jernih berwarna biru kehijauan, dikelilingi perbukitan hijau yang asri. Di tengah danau terdapat Pulau Samosir, pusat budaya Batak Toba yang kaya akan tradisi, rumah adat, serta situs sejarah seperti makam raja dan batu persidangan. Selain keindahan alam dan budayanya, wisatawan juga bisa menikmati aktivitas seperti berenang, bersepeda, hiking, hingga kuliner khas lokal. Suasana tenang dan udara sejuk menjadikan Danau Toba destinasi sempurna untuk relaksasi dan eksplorasi budaya.',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "Pantai",
    image: 'assets/mandalika.png',
    name: 'Mandalika',
    location: 'Nusa Tenggara Barat',
    rating: 5.0,
    description: 'Mandalika merupakan kawasan wisata tropis di pesisir selatan Lombok yang terkenal dengan pantai-pantai cantik seperti Kuta Mandalika dan Tanjung Aan. Perairannya yang jernih dan ombaknya cocok untuk berselancar, sementara pemandangan alamnya memikat setiap pengunjung. Selain itu, Mandalika dilengkapi Sirkuit MotoGP kelas dunia yang menjadi daya tarik internasional. Wisatawan juga bisa mengenal budaya lokal melalui kunjungan ke desa adat Sade milik Suku Sasak. Dengan perpaduan alam, budaya, dan infrastruktur modern, Mandalika menjadi destinasi favorit yang terus berkembang.',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "Pulau",
    image: 'assets/moyo.png',
    name: 'Pulau Moyo',
    location: 'Nusa Tenggara Barat',
    rating: 4.6,
    description: 'Pulau Moyo adalah surga tersembunyi di utara Pulau Sumbawa yang menawarkan keindahan alam yang masih sangat alami dan eksklusif. Dikenal dengan pantainya yang bersih, hutan tropis lebat, serta air terjun indah seperti Air Terjun Mata Jitu yang pernah dikunjungi Putri Diana. Pulau ini juga menjadi destinasi favorit untuk snorkeling dan diving karena terumbu karangnya yang masih terjaga. Dengan jumlah pengunjung yang tidak terlalu ramai, Pulau Moyo cocok bagi pencinta ketenangan dan petualangan alam. Akses ke pulau ini melalui perjalanan laut dari Sumbawa Besar, menambah nuansa petualangan. Pulau Moyo adalah tempat ideal untuk menikmati keindahan laut dan hutan dalam suasana eksklusif dan damai.',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "Pantai",
    image: 'assets/tanjung_lesung.png',
    name: 'Tanjung Lesung',
    location: 'Banten',
    rating: 4.8,
    description: 'Tanjung Lesung adalah destinasi wisata bahari unggulan di ujung barat Pulau Jawa, terkenal dengan pantai berpasir putih dan laut tenang yang cocok untuk berenang, snorkeling, dan olahraga air. Keindahan alamnya yang masih asri menjadikannya tempat ideal untuk liburan keluarga maupun pasangan. Kawasan ini juga berada tak jauh dari Gunung Krakatau dan Ujung Kulon, membuka peluang wisata alam dan edukasi. Infrastruktur terus dikembangkan sebagai bagian dari Kawasan Ekonomi Khusus (KEK) Pariwisata, dengan resort dan fasilitas yang terus meningkat. Tanjung Lesung menawarkan suasana tropis yang tenang dan nyaman, hanya sekitar 4-5 jam perjalanan dari Jakarta, menjadikannya pilihan menarik untuk pelarian akhir pekan.',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "Pulau",
    image: 'assets/gili.png',
    name: 'Pulau Gili',
    location: 'Nusa Tenggara Barat',
    rating: 4.9,
    description: 'Terletak di lepas pantai Lombok, Kepulauan Gili terdiri dari tiga pulau menawan—Gili Trawangan, Gili Meno, dan Gili Air—yang menawarkan pasir putih bersih, air laut sejernih kristal, dan kehidupan bawah laut yang memukau. Bebas kendaraan bermotor, pulau-pulau ini menghadirkan suasana tenang dan alami, sempurna untuk snorkeling, menyelam, bersepeda, atau sekadar bersantai menikmati matahari terbenam. Gili adalah pilihan ideal bagi wisatawan yang mencari petualangan tropis yang tak terlupakan.',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "Pantai",
    image: 'assets/raja_ampat.png',
    name: 'Raja Ampat',
    location: 'Papua Barat',
    rating: 4.8,
    description: 'Terkenal sebagai salah satu surga bawah laut terbaik di dunia, Raja Ampat memikat hati dengan gugusan lebih dari 1.500 pulau yang dikelilingi laut biru jernih dan terumbu karang beraneka warna. Terletak di Papua Barat, destinasi eksotis ini menawarkan pengalaman snorkeling dan diving kelas dunia, keanekaragaman hayati laut yang luar biasa, serta panorama alam yang masih perawan. Dari tebing batu kapur hingga desa adat yang ramah, Raja Ampat adalah destinasi impian bagi pencinta alam dan petualang sejati.',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  Destination(
    id: "Gunung",
    image: 'assets/bromo.png',
    name: 'TN.Bromo',
    location: 'Jawa Timur',
    rating: 4.8,
    description: 'Dikenal dengan lanskapnya yang dramatis dan menakjubkan, Taman Nasional Bromo Tengger Semeru adalah destinasi wajib bagi pecinta alam dan petualangan. Di sini, pengunjung bisa menyaksikan matahari terbit yang memesona di atas lautan pasir, menjelajahi kawah aktif Gunung Bromo, atau menantang diri mendaki Gunung Semeru—atap tertinggi di Pulau Jawa. Dilengkapi dengan budaya khas Suku Tengger yang masih lestari, kawasan ini menyuguhkan kombinasi sempurna antara keindahan alam dan kearifan lokal.',
    logo: ['assets/motor.png'],
    gradient: LinearGradient(
      colors: [
        Color(0xff4E6529),
        Color(0xff4B5C19),
        Color(0xff3C5422),
        Color(0xff3B5321),
        Color(0xff646F0C),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
];
