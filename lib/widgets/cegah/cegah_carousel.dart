import 'package:flutter/material.dart';
import './cegah_card.dart';

class CegahCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 345,
      child: Center(
        child: ListView(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <CegahCard>[
            CegahCard(
              title: 'Pakai Masker',
              imageUrl: 'https://source.unsplash.com/VGYcVZguFzs/800x600',
              paragraph:
                  'Pakailah masker dengan rapat untuk menutupi hidung dan mulut. Kenakan masker berbahan kain tiga lapis atau kain medis.',
            ),
            CegahCard(
              title: 'Cuci Tangan',
              imageUrl: 'https://source.unsplash.com/dr4qDxT-m20/800x600',
              paragraph:
                  'Cuci tangan dengan sabun setiap setelah keluar dari rumah. Pastikan menggosok semua permukaan tangan selama minimal 40 detik kemudian bilas dengan air.',
            ),
            CegahCard(
              title: 'Jaga Jarak',
              imageUrl: 'https://source.unsplash.com/1BS9SmgovrY/800x600',
              paragraph:
                  'Jaga jarak minimal 1 meter dengan orang lain dan menghindari kerumunan. Dengan menjaga jarak dapat menurunkan kemungkinan tertular Covid-19.',
            ),
          ],
        ),
      ),
    );
  }
}
