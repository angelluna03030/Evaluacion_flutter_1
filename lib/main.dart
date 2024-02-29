import 'package:flutter/material.dart';
import 'package:evaluacion/segundaruta.dart'; // Asegúrate de que este archivo exista y tenga un widget llamado SegundaRuta

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(), 
        "adios": (context) => SegundaRuta() 
      },
      debugShowCheckedModeBanner: false,
      title: 'Titulo',
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF191B31),
      appBar: AppBar(
        backgroundColor:  Color(0xFF191B31 ),
        title: const Text('Material App Bar', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: <Widget>[
          const Center(

            child: Text(
              
              "DHH", style: TextStyle(color: Colors.white, fontSize: 40)),
          ),
          Container(
            height: 300,
padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: 300,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(
                child: Image.network(
                    "https://dhh.dk/images/headshot-2017-full.jpg")),
          ),
          const Text(
              "David Heinemeier Hansson (DHH) es un programador danés, autor y empresario, nacido el 15 de octuna empresa de software conocida por su enfoque en la simplicidad y eficiencia en el software de gestión de proyectos y comunicación de equipos.", textAlign:  TextAlign.start, style: TextStyle(fontSize: 15, color: Colors.white)),
        SizedBox(height: 30,),
          ElevatedButton(
           
              onPressed: () {
                Navigator.pushNamed(context, "adios");
              },
              child: const Text("hola" ,textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.tealAccent),))
        ],
      ),
    );
  }
}
