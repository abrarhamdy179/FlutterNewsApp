import 'package:dio/dio.dart';

import '../Models/news_model.dart';

class NewsServices
{
  static Dio dio =Dio();
  static Future<NewsModel> getData () async
  {
    try
        {
          Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=c16ba5ee73244f9e825b17e774fe5b2a");
          print(response.data);
          if(response.statusCode==200)
            {
              return NewsModel.ConvertFromJeson(response.data);
            }
          else
            {
              throw Exception("You Have an Error");
            }
        }
    catch(e)
      {
        throw Exception(e);
      }
  }

}