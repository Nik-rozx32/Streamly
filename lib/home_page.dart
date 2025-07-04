import 'package:flutter/material.dart';
import 'models/user.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    final counter = Provider.of<User>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Provider')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Name: ${user.name} , Age: ${user.age}'),
          SizedBox(
            height: 20,
          ),
          Text('Counter: $counter')
        ],
      ),
    );
  }
}
