import 'package:flutter/material.dart';
import 'package:homify_app/ui/widgets/panduan.dart';
import 'package:homify_app/ui/widgets/rekomendasi_card.dart';

// Untuk Reccomendation Tempat Menyamping
// Untuk Tampilan Desktop
class RowRec extends StatelessWidget {
  const RowRec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ReccomendationCard(
          urlImage: 'larriat.png',
          nama: 'J.A Larriat',
          skor: 4,
          kota: 'Surabaya',
          negara: 'Indonesia',
          harga: '1.152.000',
        ),
        SizedBox(
          width: 50,
        ),
        ReccomendationCard(
          skor: 3,
          urlImage: 'disa.png',
          nama: 'La Disa Homestay',
          kota: 'Bandung',
          negara: 'Indonesia',
          harga: '950.000',
        ),
        SizedBox(
          width: 50,
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

// Untuk Panduan Menyamping
// Untuk Tampilan Desktop

class RowPanduan extends StatelessWidget {
  const RowPanduan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        panduanOrder(
          judul: 'Panduan Tamu',
          imgUrl: 'tamu.png',
          date: '20 Januari 2022',
        ),
        SizedBox(
          width: 50,
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
