import 'package:flutter/material.dart';
import './info_card.dart';

class InfoScreen extends StatelessWidget {
  static String routeName = '/info';
  final List<InfoCard> cards = <InfoCard>[
    InfoCard(
      title: 'Apa itu Covid-19 ?',
      paragraph:
          'Virus Corona atau severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) adalah virus yang menyerang sistem pernapasan. Penyakit karena infeksi virus ini disebut COVID-19. Virus Corona bisa menyebabkan gangguan ringan pada sistem pernapasan, infeksi paru-paru yang berat, hingga kematian.',
    ),
    InfoCard(
      title: 'Tingkat Kematian',
      paragraph:
          'Jika dilihat dari persentase angka kematian yang di bagi menurut golongan usia, maka kelompok usia 46-59 tahun memiliki persentase angka kematian yang lebih tinggi dibandingkan golongan usia lainnya. Sedangkan berdasarkan jenis kelamin, 56,6% penderita yang meninggal akibat COVID-19 adalah laki-laki dan 43,4% sisanya adalah perempuan.',
    ),
    InfoCard(
      title: 'Gejala',
      paragraph:
          'Gejala awal COVID-19 yaitu demam, pilek, batuk kering, sakit tenggorokan, dan sakit kepala. Setelah itu, gejala dapat hilang dan sembuh atau malah memberat. Penderita dengan gejala yang berat bisa mengalami demam tinggi, batuk berdahak bahkan berdarah, sesak napas, dan nyeri dada.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Useful Information'),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: cards.length,
          itemBuilder: (BuildContext ctx, int index) {
            return cards[index];
          },
          separatorBuilder: (BuildContext ctx, int index) {
            return Divider();
          },
        ),
      ),
    );
  }
}
