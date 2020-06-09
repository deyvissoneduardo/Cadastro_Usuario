import 'package:cadastrousuario/model/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final User user;

  UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(
            child: Icon(Icons.person),
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl),
          );

    return ListTile(
      leading: avatar, // avatar the user
      title: Text(user.name), // name user
      subtitle: Text(user.email), // email user
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.edit),
              color: Colors.blueAccent,
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {}),
        ],
      ), // icons the actions
    );
  }
}
