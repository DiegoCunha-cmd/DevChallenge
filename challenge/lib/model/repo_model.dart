import 'dart:convert';

class RepoModel {
  late String id;
  late String name;
  late bool private;
  late String description;
  late Uri url;
  late Uri pulls_url;

  //construtor da classe
  RepoModel(
      {required this.id,
      required this.name,
      required this.private,
      required this.description,
      required this.url,
      required this.pulls_url});

  toMap() {
    return {
      'id': id,
      'name': name,
      'private': private,
      'description': description,
      'url': url,
      'pulls_url': pulls_url
    };
  }

  //preenchimento otimizado dos valores das chaves
  factory RepoModel.fromMap(Map<String, dynamic> map) {
    return RepoModel(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        private: map['private'] ?? '',
        description: map['description'] ?? '',
        url: map['url'] ?? '',
        pulls_url: map['pulls_url'] ?? '');
  }

  //Transformar em JSON novamente, caso necessário
  String toJson() => json.encode(toMap());

  factory RepoModel.fromJson(String source) =>
      RepoModel.fromMap(json.decode(source));
}
