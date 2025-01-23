import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:z28_12/core/theme/theme.dart';
import 'package:z28_12/feature/page/news_screen.dart';
import 'package:z28_12/feature/provider/news_provider.dart';
import 'package:z28_12/feature/repository/news_repository.dart';
void main() async {
  final repository = NewsRepository();

  // Проверка, работает ли сайты с апишкой. Это не обязательно
  try {
    final news = await repository.fetchNews();
    print('Новости: ${news.length}');
    for (var item in news) {
      print('${item.title} - ${item.date}');
    }
  } catch (e) {
    print('$e');
  }

  // Проверка, работает ли вывод со строки вместо сайта (должно работать всегда). Это не обязательно
  try {
    final news = repository.fetchNewsFromString();
    print('Новости: ${news.length}');
    for (var item in news) {
      print('${item.title} - ${item.date}');
    }
  } catch (e) {
    print('$e');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NewsProvider(newsRepository: NewsRepository()),
        ),
      ],
      child: MaterialApp(
        title: 'Новости',
        theme: appTheme,
        home: const NewsScreen(),
      ),
    );
  }
}