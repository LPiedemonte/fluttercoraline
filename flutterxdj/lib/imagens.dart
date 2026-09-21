class Imagens {

late String nome;
late String imagensUrl;

Imagens(){
  nome = "";
  imagensUrl = "";
}

Imagens.v(this.nome,this.imagensUrl);

Imagens.fromJson(Map<String, dynamic> json)
: nome = json['Nome'] as String,
imagensUrl = json['Url'] as String;

Map<String, dynamic> toJson() => {

'Nome': nome,
'Url' : imagensUrl,

};

}