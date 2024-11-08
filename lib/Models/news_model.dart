class NewsModel
{
  List<dynamic>articles;

  NewsModel({required this.articles});
  factory NewsModel.ConvertFromJeson(Map<String,dynamic>jsonData)
  {
    return NewsModel(articles: jsonData['articles']);
  }
}