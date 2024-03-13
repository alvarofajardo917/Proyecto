
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context){
        return const CupertinoAlertDialog(
        title: Text('Titulo'),
        content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Text('Este es el contenido de la alerta'),
            SizedBox(height: 10),
            FlutterLogo(size:100)
           ],
          ),

          //   actions:[
          //   TextButton(
          //      onPressed: () => Navigator.pop(context),
          //       child: const Text('Cancelar')
          //    )
          // ],

        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context){
    
    showDialog(
      barrierDismissible: false, //pulsando en la sombra sale del cuadro
      context: context,
      builder: (context){

        return const AlertDialog(
          elevation: 5,
          title: Text('Titulo'),
          // shape:RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Text('Este es el contenido de la alerta'),
            SizedBox(height: 10),
            FlutterLogo(size:100)
           ],
          ),

          // actions:[
          //   TextButton(
          //      onPressed: () => Navigator.pop(context),
          //       child: const Text('Cancelar')
          // ],
          
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
         child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //   primary:Colors.indigo,
          //   shape: const StadiumBorder(),
          //   elevation: 0
          // ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
          ),
          onPressed:() => Platform.isAndroid
            ?displayDialogAndroid(context)
            :displayDialogIOS(context)
         )
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed:() => Navigator.pop(context)
      ),
    );
  }
}