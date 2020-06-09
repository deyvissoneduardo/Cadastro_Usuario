import 'package:cadastrousuario/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  const _users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
          itemCount: _users.length, // conta itens da lista
          itemBuilder: ( context, index) => Text(_users.values.elementAt(index).name), // cria a lista
      ),
    );
  }
}
