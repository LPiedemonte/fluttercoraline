import 'package:flutter/material.dart';

class Ref extends StatelessWidget {
const Ref({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(138, 128, 223, 0.749),
      appBar: AppBar(
            title: Text(
              'CORALINE',
               style: TextStyle(
              color: Color.fromRGBO(8, 0, 22, 1),
              fontSize: 37
            ),
            ),

             backgroundColor: Color.fromRGBO(104, 64, 168, 0.945),

          ),


      body: SingleChildScrollView( child:
         Center(
          child: SizedBox(
            height: 980, // Limita a altura
            width: 400,
            child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 20.0, 
            children:<Widget>[

              Card(
                color: Color.fromRGBO(198, 194, 236, 1),
            child: ListTile(
              title: Text('ref1'),
              trailing: Icon(Icons.arrow_outward),
            ),
          ),

              ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(50, 17, 128, 0.941)), // Cor de fundo do botão
            onPressed:(){
            Navigator.pop(context);
            },

           child: const Text(
            'HOME', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),
              
            ],
            ),



          ),
        ),
      ),

    );
  }
}