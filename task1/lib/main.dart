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
                    stops: [
              0.1,
              0.29
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
                const SizedBox(width: 20),
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
                        ))),
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
                  child: Row(children: const [
                    Text('IMAX',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Text(' ENHANCED',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ))
                  ]),
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
                  child: Row(children: [
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
                    const Text(' Vision',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ))
                  ]),
                )
              ]),
              const SizedBox(height: 10),
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
              const SizedBox(height: 20),
              Container(
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
                  )),
              const SizedBox(height: 20),
              Row(
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
                        style: TextStyle(
                            color: Color.fromARGB(255, 202, 202, 202)),
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
                        style: TextStyle(
                            color: Color.fromARGB(255, 202, 202, 202)),
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
                        style: TextStyle(
                            color: Color.fromARGB(255, 202, 202, 202)),
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
                        style: TextStyle(
                            color: Color.fromARGB(255, 202, 202, 202)),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Thor debe apresurarse para evitar que',
                style: TextStyle(
                    color: Color.fromARGB(255, 202, 202, 202), fontSize: 25),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Asgard no caiga en las manos de Hela.',
                style: TextStyle(
                    color: Color.fromARGB(255, 202, 202, 202), fontSize: 25),
              )
            ],
          ),
        ),
      ],
    )));
  }
}
