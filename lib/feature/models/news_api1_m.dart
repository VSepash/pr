//Модель данных для получения от сторонней апи1


class NewsApiOne{

  final DateTime date;
  final String title;
  final String description;
  final String author;
  final String site;
  final bool hot;

  // Конструктор модели, указываем нужные переменные для создания модели
  NewsApiOne({
    required this.date,
    required this.title,
    required this.description,
    required this.author,
    required this.site,
    required this.hot,
  });

  // Приводим из ответа в эту модель данных
  factory NewsApiOne.fromJson(Map<String, dynamic> json) {
    return NewsApiOne(
      date: DateTime.fromMillisecondsSinceEpoch(json['date']),
      title: json['title'],
      description: json['description'],
      author: json['author'],
      site: json['site'],
      hot: json['hot'] ?? false,
    );
  }
}