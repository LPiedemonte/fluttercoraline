import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
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
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              ),
              
              ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Messages'),
              onTap: () {
                
              },
            ),

              ],
            )
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

               Image.asset(
            'IMG/logo.png',width: 400,height: 100,),

            Row( crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
              Text('SOBRE O FILME',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(10, 1, 31, 1)
              ),
              )
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
