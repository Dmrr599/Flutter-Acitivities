import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

// Guión bajo es clase privada _
class _MyButtonState extends State<MyButton> {
  String flutterText = "ServiPack1.jpg";
  int index = 0;
  List<String> collections = [
    'Servipack1.jpg',
    'Servipack2.jpg',
    'Servipack3.jpg',
    'Servipack4.jpg',
    'Servipack5.jpg',
  ];

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 4 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicación Stateful Widget Imágenes 190583"),
        backgroundColor: Color.fromARGB(255, 19, 176, 182),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 8, 143, 153)),
              ),
              Image.asset(
                '../assets/' + flutterText,
                width: 250,
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  child: Text("Actualizar"),
                  onPressed: onPressedButton,
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 136, 23, 136)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
