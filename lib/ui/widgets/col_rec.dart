import 'package:flutter/material.dart';
import 'package:homify_app/ui/widgets/panduan.dart';
import 'package:homify_app/ui/widgets/rekomendasi_card.dart';

// Untuk Reccomendation Tempat Kebawah
// Untuk Tampilan Mobile & Tablet

class ColRec extends StatelessWidget {
  const ColRec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReccomendationCard(
          urlImage: 'larriat.png',
          nama: 'J.A Larriat',
          skor: 4,
          kota: 'Surabaya',
          negara: 'Indonesia',
          harga: '1.152.000',
        ),
        ReccomendationCard(
          skor: 3,
          urlImage: 'disa.png',
          nama: 'La Disa Homestay',
          kota: 'Bandung',
          negara: 'Indonesia',
          harga: '950.000',
        ),
        ReccomendationCard(
          skor: 5,
          urlImage: 'bali.png',
          nama: 'Bali Cottage',
          kota: 'Bali',
          negara: 'Indonesia',
          harga: '1.050.000',
        ),
      ],
    );
  }
}

// Untuk Panduan Kebawah
// Untuk Tampilan Mobile & Tablet

class ColPanduan extends StatelessWidget {
  const ColPanduan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        panduanOrder(
          judul: 'Panduan Tamu',
          imgUrl: 'tamu.png',
          date: '20 Januari 2022',
        ),
        panduanOrder(
          judul: 'Kebijakan Privasi',
          imgUrl: 'privasi.png',
          date: '11 Desember 2021',
        ),
      ],
    );
  }
}
