import 'package:cadastrousuario/provider/users.dart';
import 'package:cadastrousuario/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _users = Provider.of<Users>(context);


    return Scaffold(
      appBar: AppBar(
        title: Text('User List',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
       actions: <Widget>[
         IconButton(
           icon: Icon(Icons.add),
           onPressed: (){},
         )
       ],
      ),
      body: ListView.builder(
        itemCount: _users.count, // conta itens da lista
        itemBuilder: (context, index) => UserTile(_users.byItem(index)), // cria a lista
      ),
    );
  }
}
