import 'package:cadastrousuario/model/user.dart';
import 'package:cadastrousuario/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserFomr extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulário de Usuário",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final isValid = _form.currentState.validate();

              if (isValid) {
                _form.currentState.save();

                Provider.of<Users>(context, listen: false).put(
                  User(
                    id: _formData['id'],
                    name: _formData['name'],
                    email: _formData['email'],
                    avatarUrl: _formData['avatarUrl'],
                  ),
                );

                Navigator.of(context).pop();
              } else {
                Text("Ocorreu error de transação");
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: "Nome"),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Nome Invalido';
                      // ignore: missing_return
                    }

                    /*
                     * caso tudo validado
                     * retorna nulo
                     */
                    return null;
                  },
                  onSaved: (value) => _formData['name'] = value,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "E-mail",),
                  validator: (value) {
                    if (value == null ||
                        value.trim().isEmpty) {
                      return 'E-mail Invalido';
                      // ignore: missing_return
                    }

                    /*
                     * caso tudo validado
                     * retorna nulo
                     */
                    return null;
                  },
                  onSaved: (value) => _formData['email'] = value,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "URL Avatar"),
                  onSaved: (value) => _formData['avatarUrl'] = value,
                )
              ],
            )),
      ),
    );
  }
}
