import 'package:flutter/material.dart';
import 'package:registro_login/src/mapa.dart';
import 'package:registro_login/src/perfilapp.dart';

import 'Home.dart';





class Perfil extends StatefulWidget {
  Perfil({Key? key}) : super(key: key);

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {

    int paginaActual = 0;

  List<Widget> paginas = [
    Home(),
    Perfil1(),
    Mapa1(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create ISP'),
        ),
        body:paginas[paginaActual], 
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              paginaActual = index;
            });
          },
          
          currentIndex: paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label:"Perfil"),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          ],
        ),
      ),
    );
  }
}


