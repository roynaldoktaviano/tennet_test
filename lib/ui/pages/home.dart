import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homify_app/cubit/pages_cubit.dart';
import 'package:homify_app/ui/widgets/col_rec.dart';

import 'package:homify_app/ui/widgets/panduan.dart';
import 'package:homify_app/ui/widgets/popular_card.dart';
import 'package:homify_app/ui/widgets/rekomendasi_card.dart';
import 'package:homify_app/ui/widgets/row_rec.dart';
import '../../shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Title
  Widget title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tentukan Pilihan',
          style: titleBlue.copyWith(
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          'Mencari Homestay yang nyaman',
          style: yellowText.copyWith(
            fontSize: 16,
          ),
        )
      ],
    );
  }

  // Popular Cities
  Widget KotaPopuler() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kota Populer',
          style: titleBlue.copyWith(
            fontSize: 16,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularCard(
                namaKota: 'Jakarta',
                urlImage: 'Jakarta.png',
              ),
              PopularCard(
                namaKota: 'Bandung',
                urlImage: 'bandung.png',
              ),
              PopularCard(
                namaKota: 'Surabaya',
                urlImage: 'surabaya.png',
              ),
              PopularCard(
                namaKota: 'Palembang',
                urlImage: 'palembang.png',
              ),
              PopularCard(
                namaKota: 'Aceh ',
                urlImage: 'aceh.png',
              ),
              PopularCard(
                namaKota: 'Bogor',
                urlImage: 'bogor.png',
              ),
            ],
          ),
        )
      ],
    );
  }

  // Rekomendasi Rumah
  Widget rekomendasiRumah() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rekomendasi Tempat',
          style: titleBlue.copyWith(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        MediaQuery.of(context).size.width < 1024 ? ColRec() : RowRec()
      ],
    );
  }

  Widget panduanPemesanan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Panduan Pemesanan',
          style: titleBlue.copyWith(
            fontSize: 16,
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            right: 30,
          ),
          margin: EdgeInsets.only(
            top: 16,
          ),
          child: MediaQuery.of(context).size.width < 1024 ? ColPanduan() : RowPanduan(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PagesCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.only(
                top: 24,
                left: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title(),
                  SizedBox(
                    height: 30,
                  ),
                  KotaPopuler(),
                  SizedBox(
                    height: 30,
                  ),
                  rekomendasiRumah(),
                  SizedBox(
                    height: 10,
                  ),
                  panduanPemesanan(),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
