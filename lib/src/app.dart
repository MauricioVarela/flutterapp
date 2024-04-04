
// ignore_for_file: deprecated_member_use

/*import 'package:flutter/material.dart';
class MyAppForm extends StatefulWidget {
  MyAppForm({Key? key}) : super(key: key);

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 2, 2),
      body : ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
               CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Color.fromARGB(255, 2, 2, 2),
                      backgroundImage: AssetImage('images/fibra.png'),
              ),
              Text(
                'Inicia sesión',
                
                style: TextStyle(
                  fontFamily: 'robot',
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 255, 253, 253),
                ),

              ),
              ],
            )
          ],
      ),
    );
  }
}*/
/*

import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:registro_login/src/app.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher_string.dart';


class MyAppForm extends StatefulWidget {
  MyAppForm({Key? key}) : super(key: key);

  @override
  _MyAppFormState createState() => _MyAppFormState();
} 



class _MyAppFormState extends State<MyAppForm> {

  late String _nombre;

  late String _password;
  

  

  launchURL(String url) async {
    if(await canLaunchUrlString('https://www.youtube.com')) {
      await launchURL(url);
    }else{
      throw'Could not launch $url';
  }
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 90.0
        ) ,
        children: <Widget> [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/fibra.png'),
              ),
              Text(
                'Inicia sesión',
                style: TextStyle( 
                  fontFamily: 'NerkoOne',
                  fontSize: 30.0
                ),                
              ),

              SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(
                  color: Colors.blueGrey[600]
                ),
              ),
              TextField(
                enableInteractiveSelection: false,
                // autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: 'Nickname',
                  labelText: 'Nickname',
                  suffixIcon: Icon(
                    Icons.verified_user
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                onSubmitted: (valor){
                  _nombre = valor;
                  print('El nombre es $_nombre');
                },
              ),
              Divider(
                height: 18.0,
              ),


              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  suffixIcon: Icon( Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                onSubmitted: (valor){
                  _password = valor;
                  print('El Password es $_password');
                },
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(

                  
                  hoverColor: Colors.lightBlue,
                  child: Text('iniciar sesión',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 30.0,
                    fontFamily:'cursiva' 
                  ),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> mainperfil()));
                  }, 
                ),
              ),

ElevatedButton(
    child:const Text('Registrarse'),

    onPressed: () {
      const String url = 'https://www.youtube.com/';

      launchURL(url);
  },
  ),

            ],

          )
        ],
      ),
    );
  }
}
*/