import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'services/data_service.dart';
import 'home_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      FutureProvider(
          create: (_) => DataService().fetchUser(),
          initialData: User(age: 0, name: 'Loading.. ')),
      StreamProvider(
          create: (_) => DataService().counterStream(), initialData: 0)
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
