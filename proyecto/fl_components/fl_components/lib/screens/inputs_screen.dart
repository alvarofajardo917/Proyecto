import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey < FormState > myFormkey = GlobalKey<FormState>();

    final Map < String, String > formValues ={
      'first_name' : 'Alvaro',
      'last_name'  : 'Fajardo',
      'email'      : 'alvarofajardo@gmail.com',
      'password'   : '1234566',      
      'role'       : 'Admin'
    };
    
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormkey,
                child: Column(
                  children:  [
                    CustomInputField( labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'first_name', formValues:formValues),
                    const SizedBox(height: 30),
                
                    CustomInputField( labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues:formValues),
                    const SizedBox(height: 30),
                
                    CustomInputField( labelText: 'Correo', hintText: 'Correo del usuario',keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues:formValues),
                    const SizedBox(height: 30),
                
                    CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true, formProperty: 'password', formValues:formValues),
                    const SizedBox(height: 30),
                    
                    ElevatedButton(
                      child: const SizedBox(
                        width: double.infinity,
                        child:Center(child:const Text('Guardar'))
                        ),
                      onPressed:(){

                        FocusScope.of(context).requestFocus(FocusNode());//para que se retire el teclado en cuanto se presione el boton gurdar 
                        
                        if(!myFormkey.currentState!.validate()){
                          print('Formulario no valido');
                          return;
                        }
                        //*imprimir valores del formulario
                        print(formValues);
                    },
                    )
                  ],
                ),
              )
              ),
        )
        );
  }
}


