import 'package:flutter/material.dart';
import 'package:flutterxdjl/jogo.dart';
import 'package:flutterxdjl/livro.dart';
import 'package:flutterxdjl/perso.dart';
import 'package:flutterxdjl/ref.dart';

void main() {
  runApp(const MaterialApp (title: "App",
      home: MainApp(),));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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

          drawer: Drawer(
            child: ListView(
              padding: .zero,
              children: <Widget>[
                const DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 99, 68, 172)),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              ),
              
              ListTile(
              
              leading: Icon(Icons.account_box),
              title: const Text('Personagens'),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder:
                (context) => const Perso()),
                );
              },
            ),

              ListTile(
              
              leading: Icon(Icons.description),
              title: const Text('Livro x Filme'),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder:
                (context) => const Livro()),
                );
              },
            ),

            ListTile(
              
              leading: Icon(Icons.gamepad),
              title: const Text('Sobre o Jogo'),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder:
                (context) => const Jogo()),
                );
              },
            ),

            ListTile(
              
              leading: Icon(Icons.all_inbox),
              title: const Text('Referências'),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder:
                (context) => const Ref()),
                );
              },
            ),

              ],
            )
          ),

          body: SingleChildScrollView( child:
         Center(
          child: SizedBox(
            height: 1200, // Limita a altura
            width: 430,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 20.0, 
            children:<Widget>[

               Image.asset(
            'IMG/coralinelogo.png',width: 300,height: 100,),

            Row( crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
              Text('SOBRE O FILME',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(10, 1, 31, 1)
              ),
              )
            ],
              ),


              Text(
                ' Uma garota chamada Coraline se muda com os seus pais para uma nova casa:o Palácio Rosa. Passando pelas complicações da mudança e da falta de atenção dos pais, ela encontra uma pequena porta mágica que a leva para um outro mundo onde todos tem olhos de botões. O que parecia ser um lugar melhor e mais aconchegante se torna um pesadelo que quer manter a garota presa lá.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),

            Image.asset(
            'IMG/CoralineTunel.png',width: 400,height: 400,),

            Text(
                'O diretor do filme é Henry Selick e foi produzido pelo estúdio LAIKA em 2009. Com uma classifcação indicativa de 10 anos, o filme tem 1h40min de duração (100min) e é uma adaptação do livro Coraline de Neil Gaiman.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),


              Row( crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
              ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(50, 17, 128, 0.941)), // Cor de fundo do botão
            onPressed:(){
            Navigator.push(
            context,
            MaterialPageRoute(builder:
            (context) => const Perso()),
            );
            },

           child: const Text(
            'PERSONAGENS', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),

            ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(50, 17, 128, 0.941)), // Cor de fundo do botão
            onPressed:(){
            Navigator.push(
            context,
            MaterialPageRoute(builder:
            (context) => const Livro()),
            );
            },

           child: const Text(
            'LIVRO x FILME', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),

            ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(50, 17, 128, 0.941)), // Cor de fundo do botão
            onPressed:(){
            Navigator.push(
            context,
            MaterialPageRoute(builder:
            (context) => const Jogo()),
            );
            },

           child: const Text(
            'JOGO', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),



               ],
              )


            ],
            ),

          ),
        ),
      ),
      ),
    );
  }
}
