import 'package:flutter/material.dart';
import 'package:news_app/Models/catigory_model.dart';
import 'package:news_app/views/catigory_view.dart';

class CatigoryCard extends StatelessWidget {
  const CatigoryCard({super.key, required this.catigory});

  final CatigoryModel catigory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CatigoryView(
                category: catigory.catigoryName,
              );
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 20.0, top: 20.0),
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(catigory.image),
            ),
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.amber),
        height: 120.0,
        width: 200.0,
        child: Text(
          catigory.catigoryName,
          style: const TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
