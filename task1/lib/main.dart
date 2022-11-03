import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            child: Stack(
      children: [
        Image.asset(
          'assets/thor_banner.jpeg',
          width: 600,
          height: 290,
        ),
        Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
              Colors.transparent,
              Color.fromARGB(255, 26, 28, 40)
            ],
                    stops: [
              0.1,
              0.3
            ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter))),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                const Icon(
                  Icons.file_upload_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(150, 0, 0, 0)),
                    child: const Icon(
                      Icons.clear_rounded,
                      color: Colors.white,
                    ))
              ]),
              const SizedBox(height: 250),
              Image.asset(
                'assets/thor_ragnarok_titol.png',
                width: 1000,
                height: 125,
              ),
              const Text('Ya disponible en IMAX Enhanced',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 249, 220, 126),
                      fontSize: 20)),
              const SizedBox(height: 10),
              const Text('Más informacion en disneyplus.com/IMAXEnhanced',
                  style: TextStyle(
                      color: Color.fromARGB(255, 249, 220, 126),
                      wordSpacing: 3,
                      letterSpacing: 2)),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    width: 50,
                    height: 30,
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 49, 52, 61),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Text('12+',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )))
              ])
            ],
          ),
        ),
      ],
    )));
  }
}
