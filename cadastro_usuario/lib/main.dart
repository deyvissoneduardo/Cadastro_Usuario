import 'package:cadastrousuario/provider/users.dart';
import 'package:cadastrousuario/routes/app_routes.dart';
import 'package:cadastrousuario/view/user_form.dart';
import 'package:cadastrousuario/view/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => Users())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORME: (_) => UserFomr()
        },
      ),
    );
  }
}
