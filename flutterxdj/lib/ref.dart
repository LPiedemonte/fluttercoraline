import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _abrirLink1() async {
  final Uri url = Uri.parse('https://www.netflix.com/br/title/70105599');
  
  if (!await launchUrl(url)) {
    throw Exception('Não foi possível acessar $url');
  }
}

Future<void> _abrirLink2() async {
  final Uri url = Uri.parse('https://www.laika.com');
  
  if (!await launchUrl(url)) {
    throw Exception('Não foi possível acessar $url');
  }
}

Future<void> _abrirLink3() async {
  final Uri url = Uri.parse('https://github.com/JoaoPitale/jogoCoraline/wiki');
  
  if (!await launchUrl(url)) {
    throw Exception('Não foi possível acessar $url');
  }
}

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
            height: 400, // Limita a altura
            width: 400,
            child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 20.0, 
            children:<Widget>[

              Card(
                color: Color.fromRGBO(198, 194, 236, 1),
            child: ListTile(
              title: Text('FILME'),
              trailing: Icon(Icons.arrow_outward),
              onTap: () {
                _abrirLink1();
              },
            ),
          ),

          Card(
                color: Color.fromRGBO(198, 194, 236, 1),
            child: ListTile(
              title: Text('ESTÚDIO'),
              trailing: Icon(Icons.arrow_outward),
              onTap: () {
                _abrirLink2();
              },
            ),
          ),

          Card(
                color: Color.fromRGBO(198, 194, 236, 1),
            child: ListTile(
              title: Text('JOGO'),
              trailing: Icon(Icons.arrow_outward),
              onTap: () {
                _abrirLink3();
              },
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