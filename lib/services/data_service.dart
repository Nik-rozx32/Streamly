import 'dart:async';
import 'package:streamly/models/user.dart';

class DataService {
  Future<User> fetchUser() async {
    await Future.delayed(Duration(seconds: 2));
    return User(name: "Nikkitha", age: 19);
  }

  Stream<int> counterStream() async* {
    int count = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield count++;
    }
  }
}
