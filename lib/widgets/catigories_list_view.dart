import 'package:flutter/material.dart';
import 'package:news_app/Models/catigory_model.dart';

import 'catigory_card.dart';

class CatigoriesListView extends StatelessWidget {
  const CatigoriesListView({
    super.key,
  });

  final List<CatigoryModel> catigories = const [
    CatigoryModel(
        catigoryName: 'business', image: 'assets/images/bussiness.jpeg'),
    CatigoryModel(
      catigoryName: 'Entertainment',
      image: 'assets/images/entertainment.webp',
    ),
    CatigoryModel(
      catigoryName: 'health',
      image: 'assets/images/health.jpeg',
    ),
    CatigoryModel(
      catigoryName: 'science',
      image: 'assets/images/science.jpeg',
    ),
    CatigoryModel(
      catigoryName: 'sport',
      image: 'assets/images/sport.jpeg',
    ),
    CatigoryModel(
      catigoryName: 'technology',
      image: 'assets/images/technology.jpeg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 120.0,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: catigories.length,
        itemBuilder: (context, index) {
          return CatigoryCard(
            catigory: catigories[index],
          );
        },
      ),
    );
  }
}
