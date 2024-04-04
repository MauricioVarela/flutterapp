import 'package:flutter/material.dart';

class Perfil1 extends StatelessWidget {
  const Perfil1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Header(
            username: 'Facheron',
            backgroundAsset: 'assets/portada.jpg',
            userAsset: 'assets/fachero.jpg',
          ),
        ],
        ),
      ),
    );
    
  }
}

class Header extends StatelessWidget {
  final double height;
  final String backgroundAsset;
  final String userAsset;
  final String username;
  const Header({
    Key? key,
    this.height =140,
    required this.backgroundAsset,
    required this.userAsset,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.backgroundAsset),
          fit: BoxFit.cover
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
        Foto(
          assetImage: this.userAsset,
          size: 95,
        ),
        Text(
          '@${this.username}'
        ,style: TextStyle(
          color: Colors.white,
            fontFamily: 'Arial Negrita',
            fontSize: 20.0
          ),
        ),
      ],
      ),
    );
  }
}

class Foto extends StatelessWidget {
  final String assetImage;
  final double size;



  const Foto({
    Key? key,
    required this.assetImage,
    this.size = 95,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.assetImage),
          fit: BoxFit.cover,
        ), 
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 3,
        )
      ),
    );
  }
}
