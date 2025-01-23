//Модель данных для получения от сторонней апи2


class NewsApiTwo{

  final DateTime datetime;
  final String main;
  final String article;
  final String author;
  final String source;
  final bool isPopular;

  // Конструктор модели, указываем нужные переменные для создания модели
  NewsApiTwo({
    required this.datetime,
    required this.main,
    required this.article,
    required this.author,
    required this.source,
    required this.isPopular,
  });

  // Приводим из ответа в эту модель данных
  factory NewsApiTwo.fromJson(Map<String, dynamic> json) {
    return NewsApiTwo(
      datetime: DateTime.parse(json['datetime']),
      main: json['main'],
      article: json['article'],
      author: json['author'],
      source: json['source'],
      isPopular: json['isPopular'] ?? false,
    );
  }
}