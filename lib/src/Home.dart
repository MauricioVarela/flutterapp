import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

              Text(
                'Crea un proyecto',
                style: TextStyle( 
                  fontFamily: 'arial ',
                  fontSize: 20.0
                  
                ),                
              ),

              Divider(
                height: 10.0,
              ),

              Text(
                '1- Dirigete a la seccion de Buscar, ahi encontraras un mapa en donde podras buscar un sector o por nombre o por coordenadas para luego empezar a trabajar en la aplicacion.',
                style: TextStyle( 
                  fontFamily: 'arial ',
                  fontSize: 16.0
                  
                ),                
              ),

              SizedBox(
                height: 250.0,
                width: 350.0,
                child: Image.asset('assets/OpenStreetMaps.JPG'),
              ),




              SizedBox(
                width: 100.0,
                height: 15.0,
                child: Divider(
                  color: Colors.blueGrey[600]
                ),
              ),
              Text(
                '2- En el Mapa encontraras unas herramientas llamadas Markers la cual tendran distintas simbologias',
                style: TextStyle( 
                  fontFamily: 'arial ',
                  fontSize: 16.0
                ),                
              ),

              SizedBox(
                height: 100.0,
                width: 350.0,
                child: Image.asset('assets/Markers.JPG'),
              ),

              Text(
                '* El primer simbolo de derecha a izquierda de la pantalla es un Markers de Edificacion.',
                style: TextStyle( 
                  fontFamily: 'arial ',
                  fontSize: 16.0
                ),                
              ),
              Divider(
                height: 15.0,
              ),

                            Text(
                '* El segundo es un Markers de Nodo En el podras elegir si es un poste de alta o de baja.',
                style: TextStyle( 
                  fontFamily: 'arial ',
                  fontSize: 16.0
                ),                
              ),
                            Divider(
                height: 15.0,
              ),

                            Text(
                '* El tercero de igual manera del segundo es un Markers Tipo Nodo con el cual podras contrastar si el segundo se selecciono para usar de forma de poste de alta este "el tercero" podria ser usado como poste de baja.',
                style: TextStyle( 
                  fontFamily: 'arial ',
                  fontSize: 16.0
                ),                
              ),
              Divider(
                height: 15.0,
              ),

                            Text(
                '* Por ultimo el cuadrado es utilizado para simbolizar el Markers Nodo del tipo Camara Subterranea.',
                style: TextStyle( 
                  fontFamily: 'arial ',
                  fontSize: 16.0
                ),                
              ),

              Divider(
                height: 15.0,
              ),




            ],

          )
        ],
      ),
    );
  }




}
