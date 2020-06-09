import 'dart:math';

import 'package:cadastrousuario/data/dummy_users.dart';
import 'package:cadastrousuario/model/user.dart';
import 'package:flutter/material.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byItem(int index) {
    return _items.values.elementAt(index);
  }

  void put(User user) {
    if (user == null) {
      return;
    }
    if (user.id != null &&
        user.id.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(
        user.id,
        (_) => User(
            id: user.id,
            name: user.name,
            email: user.email,
            avatarUrl: user.avatarUrl),
      );
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => User(
            id: user.id,
            name: user.name,
            email: user.email,
            avatarUrl: user.avatarUrl),
      );
    }
    notifyListeners();
  }
}
