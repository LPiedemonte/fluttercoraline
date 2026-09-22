import 'package:flutter/material.dart';

class Livro extends StatelessWidget {
const Livro({super.key});

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
            height: 1100, // Limita a altura
            width: 400,
            child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 20.0, 
            children:<Widget>[

              Row( crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
              Text('SOBRE O LIVRO',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(10, 1, 31, 1)
              ),
              )
            ],
              ),

            Image.asset(
            'IMG/Livro.png',width: 400,height: 400,),

            Row( crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
              Text('COMPARAÇÃO LIVRO X FILME',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(10, 1, 31, 1)
              ),
              )
            ],
              ),

              Text(
                ' O livro, escrito por Neil Gaiman, é narrado em terceira pessoa, permitindo que os leitores tenham acesso aos pensamentos e sentimentos de Coraline. Já o filme, dirigido por Henry Selick, utiliza uma abordagem visual para transmitir a história, com foco nas expressões faciais e nas ações dos personagens.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),

              Text(
                ' Uma das diferenças mais notáveis entre o livro e o filme é a presença de Wybie, um personagem que apenas existe no filme e não no conto original. Isso também vale para a Mini Coraline, a boneca que aparece para a garota, que também não existe no livro.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
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