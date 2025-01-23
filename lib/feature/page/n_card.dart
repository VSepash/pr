//Карточка отображения одной новости из списка


import 'package:flutter/material.dart';
import 'package:z28_12/feature/models/n_model.dart';


class NewsCard extends StatelessWidget {
  final News news;

  const NewsCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row( // Название новости
              children: [
                if (news.isPopular) const Text('🔥', style: TextStyle(fontSize: 16)), // Если новость популярна, отображаем огонек
                Expanded(
                  child: Text(news.title, style: Theme.of(context).textTheme.titleLarge), // Отображение названия новости
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text( // Описание новости
              news.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Text( // Автор новости
              'By ${news.author}, ${news.source}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}