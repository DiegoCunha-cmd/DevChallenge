import 'dart:convert';

import 'package:challenge/model/repo_model.dart';
import 'package:challenge/repository/i_repo_repository.dart';
import 'package:http/http.dart' as http;

//fetch para acesso da api,
//chamamento da classe modelo
class RepoHttpRepository implements IRepoRepository {
  @override
  Future<List<RepoModel>> findAllRepos() async {
    final response = await http.get(Uri.parse(
        "https://api.github.com/search/repositories?q=language:Swift&sort=stars/"));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<RepoModel>((resp) => RepoModel.fromMap(resp))
        .toList();
  }
}
