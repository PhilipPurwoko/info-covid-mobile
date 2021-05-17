import 'package:flutter/material.dart';

List<Widget> dummyCegahText = [
  Text(
    'Lindungi diri Anda dan orang lain di sekitar Anda dengan mengetahui fakta dan mengambil tindakan pencegahan yang tepat. Ikuti saran yang diberikan oleh otoritas kesehatan setempat Anda.',
    textAlign: TextAlign.start,
  ),
  Divider(),
  Text(
    'Menelepon terlebih dahulu memungkinkan penyedia layanan kesehatan Anda dengan cepat mengarahkan Anda ke fasilitas kesehatan yang tepat. Ini melindungi Anda, dan mencegah penyebaran virus dan infeksi lainnya.',
    textAlign: TextAlign.start,
  ),
  Divider(),
  Text(
    'Masker dapat membantu mencegah penyebaran virus dari orang yang memakai masker ke orang lain. Masker saja tidak dapat melindungi dari COVID-19, dan harus dikombinasikan dengan jarak fisik dan kebersihan tangan. Ikuti saran yang diberikan oleh otoritas kesehatan setempat Anda.',
    textAlign: TextAlign.start,
  ),
  Divider(),
  Column(
    children: [
      Text(
          'Informasi dikutip dari who.int diterjemahkan dari Bahasa English ke Bahasa Indonesia. Untuk informasi lebih lengkap gunakan link berikut.'),
      Text(
        'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public',
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    ],
  ),
];
