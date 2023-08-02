import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void playNote(int note) {
    //FUNCION PARA REPRODUCIR NOTA DE MUSICA
    //al crear un intero como parametro para cambiar el numero de la nota.
    AudioPlayer mandarina = AudioPlayer();
    mandarina.play(AssetSource("audios/note$note.wav"));
  }

  Widget buildKey(Color colorExpande,int note) {
    //se crea parametros para modificar el color y el numero para la nota musical
    return Expanded(
      child: Container(
          color: colorExpande,
          child: TextButton(
              onPressed: () {
                playNote(note);
              },
              child: Text("Hola ")
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("XiloPhoneApp"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Colors.amber,2),
          buildKey(Colors.cyanAccent,5),
          buildKey(Colors.blueAccent, 7),
          buildKey(Colors.white60,3),
          buildKey(Colors.lightGreen , 4),
          buildKey(Colors.lightGreenAccent, 1),
          buildKey(Colors.red, 6)


        ],
      ),
    );
  }
}
