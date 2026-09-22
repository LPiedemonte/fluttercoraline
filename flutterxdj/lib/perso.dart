import 'package:flutter/material.dart';
import 'imagens.dart';

class Perso extends StatelessWidget {
  final List<Map<String, dynamic>>? jsonData;

  const Perso({super.key, this.jsonData});

  Future<List<Imagens>> _loadData() {
    if (jsonData != null) {
      return Future.value(
        jsonData!.map((item) => Imagens.fromJson(item)).toList(),
      );
    }
    return loadImagens();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(138, 128, 223, 0.749),
      appBar: AppBar(
        title: const Text(
          'CORALINE',
          style: TextStyle(
            color: Color.fromRGBO(8, 0, 22, 1),
            fontSize: 37,
          ),
        ),
        backgroundColor: const Color.fromRGBO(104, 64, 168, 0.945),
      ),
      body: FutureBuilder<List<Imagens>>(
        future: _loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(
              child: Text('Não foi possível carregar as imagens.'),
            );
          }

          final imagens = snapshot.data ?? <Imagens>[];
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: imagens.length,
                  itemBuilder: (context, index) {
                    final imagem = imagens[index];
                    return Card(
                      color: Color.fromRGBO(228, 231, 233, 1),
                      margin: const EdgeInsets.only(bottom: 12),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(12),
                        leading: Image.asset(
                          imagem.url,
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.broken_image, size: 48),
                        ),
                        title: Text(
                          imagem.nome,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: imagem.descricao.trim().isEmpty
                            ? null
                            : Text(imagem.descricao),
                      ),
                    );
                  },
                ),
              ),

              
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(50, 17, 128, 0.941),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'HOME',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}