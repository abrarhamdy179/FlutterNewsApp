import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Widgets/articals_widget.dart';
import '../providers/news_provider.dart';

class NewsArticals extends StatelessWidget {
  const NewsArticals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<NewsProvider>(builder: (context, objProv, child)
      {
        var obj = objProv.newsModel ;
        if(obj==null)
          {
            objProv.getNewsServices();
            return Center(child: CircularProgressIndicator());
          }
        return ListView.builder(
           itemBuilder: (context, index) {
             return ArticalsWidget(
               urlToImage:obj.articles[index]['urlToImage']?? '' ,
               title:obj.articles[index]['title'] ?? '' ,
               description: obj.articles[index]['description'] ?? '',
             );
           },
          itemCount: obj.articles.length,
        );
      },
      ),
    );
  }
}