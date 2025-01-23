//Провайдер отвечает за состояние загрузки данных с сайта - загрузка, ошибка/ успех
//Сейчас если с сайта не грузит, то грузит со строки с файла вдруг апи не грузит


import 'package:flutter/material.dart';
import 'package:z28_12/feature/models/n_model.dart';
import '../repository/news_repository.dart';

class NewsProvider extends ChangeNotifier {
  final NewsRepository _newsRepository;
  List<News> news = []; // Список под будущие новости
  String status = 'loading'; // Возможные состояния: loading, success, error

  NewsProvider({required NewsRepository newsRepository})
      : _newsRepository = newsRepository;

  Future<void> fetchNews() async {
    status = 'loading';
    notifyListeners();

    try {
      // Попытка загрузки данных с сайта
      news = await _newsRepository.fetchNews();
      status = 'success';
    } catch (e) {
      print('$e');
      try {
        // Если загрузка с сайта не удалась, загружаем данные из строки
        news = _newsRepository.fetchNewsFromString();
        status = 'success';
      } catch (error) {
        print('$error');
        status = 'error';
      }
    }

    notifyListeners();
  }
}