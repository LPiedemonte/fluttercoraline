import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Imagens {
  final String nome;
  final String url;
  final String descricao;

  const Imagens({
    required this.nome,
    required this.url,
    required this.descricao,
  });

  factory Imagens.fromJson(Map<String, dynamic> json) {
    return Imagens(
      nome: json['nome'] as String,
      url: json['url'] as String,
      descricao: json['descricao'],
    );
  }
}

Future<List<Imagens>> loadImagens() async {
  final String jsonString = await rootBundle.loadString('assets/imagens.json');
  final List<dynamic> jsonList = json.decode(jsonString);
  return jsonList.map((json) => Imagens.fromJson(json)).toList();
}