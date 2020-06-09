import 'package:cadastrousuario/provider/users.dart';
import 'package:cadastrousuario/routes/app_routes.dart';
import 'package:cadastrousuario/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _users = Provider.of<Users>(context);


    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuário',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
       actions: <Widget>[
         IconButton(
           icon: Icon(Icons.add),
           onPressed: (){
             Navigator.of(context).pushNamed(
               AppRoutes.USER_FORME
             );
           },
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
