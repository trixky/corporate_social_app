import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Post(
              'SpaceX',
              'Floride',
              'https://digischool-public.s3-eu-west-1.amazonaws.com/marketing-%C3%A9tudiant/Spacex/Logo_Spacex_entreprise_elon_musk.jpg',
              'https://media.lesechos.com/api/v1/images/view/5e086b943e45466105108c55/1280x720/0602448775162-web-tete.jpg',
              'Les astronautes américains Bob Behnken et Doug Hurley se sont envolés samedi du centre spatial Kennedy en Floride à bord d’une fusée SpaceX, première société privée à se voir confier par la Nasa la responsabilité d’acheminer ses précieux astronautes.',
            ),
            Post(
              'Google',
              'Californie',
              'https://static.hitek.fr/img/actualite/2017/09/28/fb_google-logo-2015-g-icon.png',
              'https://i.morioh.com/2019/10/31/c2e266641eb1.jpg',
              'L’outil de développement multiplateforme de Google, Flutter, n’a jamais eu pour vocation de se limiter aux seules plateformes mobiles. Il veut s’étendre aux PC sous Windows, Linux et macOS. Mais Google souhaiterait une étroite collaboration avec Microsoft, collaboration qui est loin d’être acquise d’avance.',
            ),
            Post(
              'Apple',
              'Californie',
              'https://cdn.1min30.com/wp-content/uploads/2019/05/Apple-logo-1.jpg',
              'https://www.journaldugeek.com/content/uploads/2020/11/m1-780x440.jpg',
              'En ouverture de sa nouvelle Keynote, « One More Thing », Apple a levé le voile sur sa nouvelle puce de l’écosystème Apple Silicon : l’Apple M1. Elle a été pensée pour les nouveaux MacBook Air, Mini et Pro (présentés dans la foulée). La M1 a été conçue comme un tout-en-un, réunissant plusieurs puces dont le CPU ou la mémoire vive.',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  Post(
    this._company,
    this._location,
    this._logo,
    this._picture,
    this._contentText,
  );

  final String _company;
  final String _location;
  final String _logo;
  final String _picture;
  final String _contentText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 15, 0),
                height: 50,
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: new Image(
                    image: new NetworkImageWithRetry(
                      _logo,
                    ),
                    fit: BoxFit.cover,
                  ),
                  // child: Image.network(
                  // _logo,
                  // fit: BoxFit.cover,
                  // ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _company,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(_location),
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Image(
            image: new NetworkImageWithRetry(
              _picture,
            ),
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.grey,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.comment),
                color: Colors.grey,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.share),
                color: Colors.grey,
                onPressed: () {},
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Text(
              _contentText,
            ),
          ),
        ],
      ),
    );
  }
}
