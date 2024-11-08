import 'package:flutter/material.dart';

import '../Models/news_model.dart';
import '../Services/news_service.dart';

class NewsProvider with ChangeNotifier
{
  NewsModel ? newsModel;
  Future<void> getNewsServices () async
  {
    newsModel = await NewsServices.getData();
    notifyListeners();
  }
}