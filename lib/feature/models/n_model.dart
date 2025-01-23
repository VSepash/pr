//Это модель данных базовая, которая выводится на сайте на карточке новости


import 'package:z28_12/feature/models/news_api1_m.dart';
import 'news_api2_model.dart';

class News {

  // Переменные, которые хранит модель News
  final DateTime date;
  final String title;
  final String description;
  final String author;
  final String source;
  final bool isPopular;

  // Конструктор модели, указываем нужные переменные для создания модели
  News({
    required this.date,
    required this.title,
    required this.description,
    required this.author,
    required this.source,
    required this.isPopular,
  });

  // Конвертация из модели апи1
  factory News.fromApiOne(NewsApiOne apiData) {
    return News(
      date: apiData.date,
      title: apiData.title,
      description: apiData.description,
      author: apiData.author,
      source: apiData.site,
      isPopular: apiData.hot,
    );
  }

  // Конвертация из модели апи2
  factory News.fromApiTwo(NewsApiTwo apiData) {
    return News(
      date: apiData.datetime,
      title: apiData.main,
      description: apiData.article,
      author: apiData.author,
      source: apiData.source,
      isPopular: apiData.isPopular,
    );
  }
}