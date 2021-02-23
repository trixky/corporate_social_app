import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          topBox,
          followSection,
          textSection,
          SizedBox(height: 20),
          buttonSection,
        ],
      ),
    );
  }
}

Widget topBox = Container(
  padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
  width: double.infinity,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blue[400],
        Colors.tealAccent[700],
      ],
    ),
  ),
  child: Column(
    children: [
      imageProfile,
      textProfile,
    ],
  ),
);

Widget imageProfile = Container(
  padding: EdgeInsets.all(4),
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(75),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 1,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(1000),
    child: Image.network(
        'http://dev.villanovaice.com/wp-content/uploads/2015/02/Elon-Musk-300x300.jpg'),
  ),
);

Widget textProfile = Container(
  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Column(
    children: [
      Text(
        'Elon Musk',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Text(
        'CEO/CTO chez spaceX',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
      SizedBox(height: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          Text(
            'Los Angeles, USA',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ],
      )
    ],
  ),
);

Widget followSection = Container(
  color: Colors.white,
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Post('Postes', '937'),
      Post('Followers', '78k'),
      Post('Follow', '21'),
    ],
  ),
);

class Post extends StatelessWidget {
  Post(
    this._label,
    this._value,
  );

  final String _label;
  final String _value;

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            _label,
            style: TextStyle(
              color: Colors.blue[400],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            _value,
            style: TextStyle(
              color: Colors.tealAccent[700],
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

Widget textSection = Container(
  padding: EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'À propos',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 15),
      Text(
        'Elon Musk, (né le 28 juin 1971 à Pretoria, Afrique du Sud), entrepreneur américain d\'origine sud-africaine qui a cofondé la société de paiement électronique PayPal et créé SpaceX, fabricant de lanceurs et d\'engins spatiaux.',
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 15,
          height: 1.5,
        ),
      ),
    ],
  ),
);

Widget buttonSection = RaisedButton(
  onPressed: () {},
  textColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
  child: Container(
    padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
        colors: [
          Colors.blue[400],
          Colors.tealAccent[700],
        ],
      ),
    ),
    child: Text(
      'Suivre',
      style: TextStyle(
        fontSize: 20,
      ),
    ),
  ),
  padding: EdgeInsets.all(0),
);
