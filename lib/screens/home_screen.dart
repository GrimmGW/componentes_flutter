import 'package:componentes_flutter/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla principal'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(AppRoutes.menuOptions[index].name),
            leading: Icon(AppRoutes.menuOptions[index].icon),
            subtitle: Text('Toca aqui'),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
          );
        },
      ),
    );
  }
}