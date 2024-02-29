import 'package:flutter/material.dart';

class SegundaRuta extends StatelessWidget {
  const SegundaRuta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF191B31 ),
      appBar: AppBar(
             backgroundColor:  Color(0xFF191B31 ),
        title: const Text('Material App Bar', style: TextStyle(color: Colors.white )),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 340,),
           Center(
          child: ElevatedButton(
            
             onPressed: () {
                Navigator.pushNamed(context, "/");
              }, child: Text("Adios", style: TextStyle(color: Colors.tealAccent, fontSize: 25 ))),
          ),
        
        ],
      ),
    );
  }
}