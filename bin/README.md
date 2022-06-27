# Bahasa Pemrograman Dart

Pengertian Bahasa Pemrograman Dart
Bahasa pemrograman multiguna (bahasa pemrograman dengan tujuan umum), Dart, yang dapat digunakan dalam mengembangkan berbagai jenis aplikasi dan program yang digunakan dalam mengembangkan aplikasi web, aplikasi seluler, aplikasi desktop, server, dll.

Dart merupakan programming language lintas platform atau platform independen yang artinya dapat dijalankan pada sistem operasi yang berbeda seperti Windows, Linux, Unix dan MacOS, dll yang awalnya dikembangkan oleh Google dan kemudian disetujui sebagai standar oleh Ecma, yang saat ini digunakan untuk membangun aplikasi web, server, desktop, dan seluler.

Dart awalnya dirancang sebagai programming language yang dioptimalkan klien untuk pengembangan cepat aplikasi web dan seluler.

Sebagai salah satu dari banyaknya programming language yang mendukung multi paradigma, Dart, bersifat imperatif, fungsional, reflektif dan berorientasi objek. Selain itu, Dart juga mengikuti semua konsep pendekatan pemrograman berorientasi objek seperti kelas, pewarisan, abstraksi, enkapsulasi, dan polimorfisme, dll. Dart juga merupakan tipe bahasa pemrograman yang sangat kuat yang menyediakan fitur pengumpul sampah otomatis. Bahasa Dart sendiri bersifat open source yang dilisensikan di bawah BDS. Sintaks nya merupakan sintaksis gaya-C sederhana.

Sejarah Dart
Dart dirancang dan dikembangkan oleh Lars Bak dan Kasper Lund di Google yang secara resmi diperkenalkan pada Oktober 2011 di Konferensi GOTO, Denmark dan versi pertama Dart yaitu versi 1.0 resmi dirilis pada Nov 2013.

Untuk menstandarisasi programming language yang baru dibuat, Ecma International membuat komite teknis yang dikenal sebagai TC52, dan Fakta bahwa kode Dart dapat dikompilasi ke dalam JavaScript telah membuat bahasa ini cukup kompatibel dengan banyak browser web modern. Hal ini menyebabkan standardisasi yang tak terhindarkan pada Juli 2014, ketika Ecma International menyetujui edisi pertama spesifikasi bahasa Dart di Majelis Umum ke-107 badan internasional tersebut.

Sekitar enam bulan kemudian, pada bulan Desember 2014, edisi lain dari spesifikasi bahasa Dart telah disetujui oleh Ecma International. Ini adalah edisi kedua dari spesifikasi bahasa Dart.

Kompiler pertama yang dapat menghasilkan kode JavaScript dari Dart dikenal sebagai dartc, tetapi kemudian dikutuk oleh Google. Itu diikuti oleh Frog, kompiler yang ditulis dalam Dart, tetapi tidak dapat mengkompilasi kode sepenuhnya. Kompiler ketiga adalah dart2js yang juga ditulis dalam Dart dan masih digunakan.

Fitur Bahasa Pemrograman Dart
Ada sepuluh fitur Dart yang menjadikannya salah satu bahasa pemrograman populer, yaitu:

1. Cross Platform (lintas platform)
   Dart merupakan programming language lintas platform atau platform independen yang berarti dapat dijalankan pada sistem operasi yang berbeda seperti Windows, Linux, Unix dan MacOS, dll.

2. General Purpose (tujuan umum)
   Dart bersifat multiguna (dengan tujuan umum) yang artinya dapat digunakan dalam mengembangkan berbagai jenis aplikasi dan program.

3. Multi-paradigm (multiparadigma)
   Dart mendukung multi paradigma seperti pemrograman imperatif, fungsional, reflektif dan berorientasi objek.

4. Object-Oriented (berorientasi pada objek)
   Dart adalah pemrograman berorientasi objek dan mengikuti semua konsep pendekatan pemrograman berorientasi objek seperti kelas, pewarisan, abstraksi, enkapsulasi, dan polimorfisme, dll.

5. Simple Syntax (sintaks yang sederhana)
   Sintaks Dart adalah sintaksis gaya-C sederhana. Programmers pemula dapat dengan mudah mempelajari sintaks Dart.

6. Automatic Garbage Collector (pengumpul sampah otomatis)
   Dart adalah bahasa yang sangat diketik yang menyediakan fitur pengumpul sampah otomatis.

7. Compiled Programming Language (bahasa pemrograman yang dikompilasi)
   Dart merupakan programming language yang memenuhi syarat yang berarti bahwa kompiler digunakan untuk mengubah kode yang ditulis dalam bahasa pemrograman Dart menjadi bahasa asli atau JavaScript sebelum dieksekusi.

8. Open Source (sumber yang terbuka)
   Dart adalah bahasa pemrograman open source yang dilisensikan di bawah BDS.

9. Inbuilt Libraries (perpustakaan bawaan)
   Dart menyediakan berbagai macam perpustakaan inbuilt kelas kaya.

## Contents

- [01_DAY1_dart_programming.dart](#Prerequisites)
- [02_DAY1_Variable.dart]()
- [Why it is Important]()
- [When we use]()
- [How to implement in a Flutter Project]()
- [Used Languages](#Used-Languages)

# Prerequisites

If you are new to Flutter, please first follow the [Flutter](https://docs.flutter.dev/get-started/install) Setup guide.

# Internationalization

Internationalization is the process of designing and developing your application (webapp, mobile app, etc) in a form that can be adapted and localized to different cultures, regions and languages. [Official documentation](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)

# Localization

Localization is the form that your application adapts to meet the language to some Locale.

# Implementation

- STEP 1 [Package]()
  - GetX
- STEP 2 [Translation]()
  - [LangClass](#Parse-Resource-Language)
  - Setup Locale
- STEP 3 [Update-Locale]()
  - [Change Language](#Update-Language)
- STEP 4 [Finishing]()
  - Implementation
  - Optimization Call Lang Data

# Usage

- <h2>Import the GetX package</h2>

Add to `pubspec.yaml`

```ts

dependencies:
  cupertino_icons: ^1.0.2
  flutter:
    sdk: flutter
  get: ^4.6.5

```

# Country codes List

<img width="250" src="assets/images/countries.png">

- [Check here](https://www.nationsonline.org/oneworld/country_code_list.htm)

# Parse Resource Language

```ts
import 'package:get/get.dart';

class lang extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      'id_ID': {
        homePage: "Halaman Utama",
        bodyhomePage: "Hallo Dunia",
      },
      'en_US': {
        homePage: "Home Page",
        bodyhomePage: "Hello World",
      },
      'tw_TW': {
        homePage: "主頁",
        bodyhomePage: "你好世界",
      },
    };
  }

```

# Implementations to main

```ts
 return GetMaterialApp(
      // locale: const Locale('id_ID'),
      locale: Locale(Lang.locale.first.keys.first),
      translations: Lang(),

```

# Parse List Items

- <h3>Lang</h3>

```ts

class Lang extends Translations {
  static const List<Map<String, String>> locale = [
    {'id_ID': 'Indonesia'},
    {'en_US': 'English'},
    {'tw_TW': 'Chinese Traditional'}
  ];

  static const homePage = 'home_page';
  static const bodyhomePage = 'body_home_page';

```

# Update Language

- <h3>language_page</h3>

```ts

 body: ListView.builder(
          itemCount: Lang.locale.length,
          itemBuilder: (context, index) {
            Map language = Lang.locale[index];
            return ListTile(
              onTap: () {
                Get.updateLocale(Locale(language.keys.first));
              },
              title: Text(
                language.values.first,
              ),
            );
          },
        ),

```

# Implemntation

- <h3>Optimization Call Language</h3>

```ts

//  Text('home_page'.tr),
//  Text("body_home_page".tr),
title: Text(Lang.homePage.tr),
child: Text(Lang.bodyhomePage.tr),

```

- <h3>Add icon check for the language running</h3>

```ts

 title: Text(
                language.values.first,
              ),
              trailing: language.keys.first == Get.locale!.languageCode
                  ? const Icon(Icons.check)
                  : null,

```

# Screenshots result

<img width="150" src="assets/images/screenshots/1.jpg"> <img width="150" src="assets/images/screenshots/2.jpg"> <img width="150" src="assets/images/screenshots/3.jpg"> <img width="150" src="assets/images/screenshots/4.jpg">

# Used Languages

- [Indonesia](id)
- [English](US)
- [Chinese](TW)
