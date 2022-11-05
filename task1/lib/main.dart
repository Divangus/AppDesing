// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Disney());
  }
}

class Disney extends StatelessWidget {
  const Disney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 26, 28, 40),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Image.asset(
                'assets/thor_banner.jpeg',
                width: 700,
                height: 282,
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Color.fromARGB(255, 26, 28, 40)
                    ],
                    stops: [0.1, 0.29],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                  ),
                ),
              ),
              Column(
                children: [
                  const TopButtons(),
                  const SizedBox(height: 250),
                  Image.asset(
                    'assets/thor_ragnarok_titol.png',
                    width: 1000,
                    height: 125,
                  ),
                  const Film_Info(),
                  const SizedBox(height: 20),
                  const Buttons(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Thor debe apresurarse para evitar que',
                    style: TextStyle(
                        color: Color.fromARGB(255, 202, 202, 202),
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Asgard no caiga en las manos de Hela.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 202, 202, 202),
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Menu_Bar()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Menu_Bar extends StatelessWidget {
  const Menu_Bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color.fromARGB(255, 17, 18, 26),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.home, size: 35, color: Colors.white),
            const SizedBox(width: 70),
            const Icon(Icons.search,
                size: 35, color: Color.fromARGB(255, 202, 202, 202)),
            const SizedBox(width: 70),
            const Icon(Icons.download_rounded,
                size: 35, color: Color.fromARGB(255, 202, 202, 202)),
            const SizedBox(width: 70),
            Image.asset(
              'assets/perfil.png',
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Watch_Button(),
        SizedBox(height: 20),
        Secondary_Buttons(),
      ],
    );
  }
}

class Secondary_Buttons extends StatelessWidget {
  const Secondary_Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: const [
            Icon(Icons.add,
                size: 35, color: Color.fromARGB(255, 202, 202, 202)),
            SizedBox(
              height: 10,
            ),
            Text(
              'Mi Lista',
              style: TextStyle(color: Color.fromARGB(255, 202, 202, 202)),
            )
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        Column(
          children: const [
            Icon(Icons.group_rounded,
                size: 35, color: Color.fromARGB(255, 202, 202, 202)),
            SizedBox(
              height: 10,
            ),
            Text(
              'GroupWatch',
              style: TextStyle(color: Color.fromARGB(255, 202, 202, 202)),
            )
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        Column(
          children: const [
            Icon(Icons.video_collection_rounded,
                size: 35, color: Color.fromARGB(255, 202, 202, 202)),
            SizedBox(
              height: 10,
            ),
            Text(
              'Tráiler',
              style: TextStyle(color: Color.fromARGB(255, 202, 202, 202)),
            )
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        Column(
          children: const [
            Icon(Icons.download_rounded,
                size: 35, color: Color.fromARGB(255, 202, 202, 202)),
            SizedBox(
              height: 10,
            ),
            Text(
              'Descargar',
              style: TextStyle(color: Color.fromARGB(255, 202, 202, 202)),
            )
          ],
        ),
      ],
    );
  }
}

class Watch_Button extends StatelessWidget {
  const Watch_Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.play_arrow_rounded,
            size: 35,
            color: Colors.black,
          ),
          Text(
            'VER',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}

class Film_Info extends StatelessWidget {
  const Film_Info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        IMAX_Info(),
        SizedBox(height: 10),
        Info_Tags(),
        SizedBox(height: 10),
        Film_Tags(),
      ],
    );
  }
}

class Film_Tags extends StatelessWidget {
  const Film_Tags({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '2017',
              style: TextStyle(color: Color.fromARGB(255, 202, 202, 202)),
            ),
            Text(
              ' · ',
              style: TextStyle(
                color: Color.fromARGB(255, 202, 202, 202),
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            Text(
              '2 h 12 min',
              style: TextStyle(color: Color.fromARGB(255, 202, 202, 202)),
            ),
            Text(
              ' · ',
              style: TextStyle(
                color: Color.fromARGB(255, 202, 202, 202),
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            Text(
              'Ciencia ficción, Comedia, Fantásticas,',
              style: TextStyle(color: Color.fromARGB(255, 202, 202, 202)),
            ),
          ],
        ),
        const Text(
          'Superhéroe, Acción y aventura',
          style: TextStyle(color: Color.fromARGB(255, 202, 202, 202)),
        ),
      ],
    );
  }
}

class Info_Tags extends StatelessWidget {
  const Info_Tags({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 30,
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 49, 52, 61),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: const Text(
            '12+',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 165,
          height: 30,
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 49, 52, 61),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Row(
            children: const [
              Text(
                'IMAX',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                ' ENHANCED',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 120,
          height: 30,
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 49, 52, 61),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Row(
            children: [
              Image.asset(
                'assets/dolby.png',
                width: 28,
                height: 18,
              ),
              const Text('Dolby',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              const Text(
                ' Vision',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class IMAX_Info extends StatelessWidget {
  const IMAX_Info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Ya disponible en IMAX Enhanced',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 249, 220, 126),
              fontSize: 20),
        ),
        SizedBox(height: 10),
        Text(
          'Más informacion en disneyplus.com/IMAXEnhanced',
          style: TextStyle(
              color: Color.fromARGB(255, 249, 220, 126),
              wordSpacing: 3,
              letterSpacing: 2),
        ),
      ],
    );
  }
}

class TopButtons extends StatelessWidget {
  const TopButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(
            Icons.file_upload_outlined,
            size: 30,
            color: Colors.white,
          ),
          const SizedBox(width: 20),
          Container(
            width: 25,
            height: 25,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color.fromARGB(150, 0, 0, 0)),
            child: const Icon(
              Icons.clear_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
