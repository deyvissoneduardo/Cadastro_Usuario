import 'package:cadastrousuario/data/dummy_users.dart';
import 'package:cadastrousuario/widgets/user_tile.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
       actions: <Widget>[
         IconButton(
           icon: Icon(Icons.add),
           onPressed: (){},
         )
       ],
      ),
      body: ListView.builder(
        itemCount: _users.length, // conta itens da lista
        itemBuilder: (context, index) => UserTile(_users.values.elementAt(index)), // cria a lista
      ),
    );
  }
}
