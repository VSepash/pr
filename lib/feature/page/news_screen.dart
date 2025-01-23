//Главный экран, отображение всех новостей

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:z28_12/feature/page/n_card.dart';

import '../provider/news_provider.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  NewsScreenState createState() => NewsScreenState();
}

class NewsScreenState extends State<NewsScreen> {
  @override
  void initState() {
    super.initState();
    // Вызываем fetchNews при инициализации
    Future.microtask(() =>
        Provider.of<NewsProvider>(context, listen: false).fetchNews());
  }

  @override
  Widget build(BuildContext context) {
    final newsProvider = Provider.of<NewsProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Новости')),
      body: Builder(
        builder: (context) {
          if (newsProvider.status == 'loading') { // Если новости еще грузятся, то отображается загрузка
            return const Center(child: CircularProgressIndicator());
          } else if (newsProvider.status == 'error') { // Если ошибка
            return const Center(child: Text('Ошибка в загрузке новостей'));
          } else { // Если все успешно, то вывод новостей
            return ListView.builder(
              itemCount: newsProvider.news.length,
              itemBuilder: (context, index) {
                return NewsCard(news: newsProvider.news[index]);
              },
            );
          }
        },
      ),
    );
  }
}