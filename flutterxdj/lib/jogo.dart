import 'package:flutter/material.dart';

class Jogo extends StatelessWidget {
const Jogo({super.key});

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
            height: 1050, // Limita a altura
            width: 400,
            child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 20.0, 
            children:<Widget>[

              Row( crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
              Text('SOBRE O JOGO',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(10, 1, 31, 1)
              ),
              )
            ],
              ),

               Image.asset(
              'IMG/Jogo.png',width: 400,height: 400,),

              Row( crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
              Text('COMPARAÇÃO JOGO X FILME',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(10, 1, 31, 1)
              ),
              )
            ],
              ),

              Text(
                ' O jogo da ênfase nas cenas finais do filme, focando na fuga de Coraline da casa da outra mãe. O objetivo do jogo é passar pelo túnel, desviando dos obstáculos para evitar que a outra mãe, a Beldam, te alcance, sem muito foco em outras partes do filme.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),

              Text(
                ' O projeto também possui mecânicas simples onde seu único objetivo é desviar de obstáculos. Eles não só fazem com que o jogador perca pontos de vida, mas também com que a Beldam se aproxime cada vez mais. A dificuldade do túnel aumenta conforme o jogador se aproxima do final.',
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