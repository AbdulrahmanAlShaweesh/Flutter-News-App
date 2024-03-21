import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articles});

  final ArticleModel articles;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: articles.image != null
              ? Image.network(
                  articles.image!,
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Text(''),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          articles.title!,
          textAlign: TextAlign.justify,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          articles.subTitle ?? ' ',
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
