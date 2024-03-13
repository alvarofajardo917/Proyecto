import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
//import 'package:fl_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
       
      ),
      body: ListView.separated(
        itemBuilder: (context,i) => ListTile(
        leading: Icon(menuOptions[i].icon, color:AppTheme.primary),
        title:Text(menuOptions[i].name),//Nombre de la ruta principal
        onTap:(){

          // final route= MaterialPageRoute(
          //   builder: (context)=> const Listview1Screen()
          //   );
          // Navigator.pushReplacement(context, route); // quitar el ir para atras pushReplacement
          Navigator.pushNamed(context, menuOptions[i].route);
        
        },
      ),
         separatorBuilder:(_,__) => const Divider(),
         itemCount:menuOptions.length
      )
    );
  }
}