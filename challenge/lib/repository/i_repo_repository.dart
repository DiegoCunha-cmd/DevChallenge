import 'package:challenge/model/repo_model.dart';

//Interface a ser implementada pelo model

abstract class IRepoRepository {
  Future<List<RepoModel>> findAllRepos();
}
