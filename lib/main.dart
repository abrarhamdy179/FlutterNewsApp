import 'package:flutter/material.dart';
import 'package:news_app/providers/news_provider.dart';
import 'package:provider/provider.dart';
import 'Screens/news_articals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NewsProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NewsArticals(),
      ),
    );
  }
}