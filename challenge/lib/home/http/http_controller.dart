import 'package:challenge/repository/i_repo_repository.dart';
import 'package:get/get.dart';

class HttpController extends GetxController with StateMixin {
  final IRepoRepository _httpRepository;

  HttpController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findRepos();
  }

  //Buscador de repositorios com tratamento de erros
  Future<void> findRepos() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllRepos();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error("Erro ao buscar Repositórios"));
    }
  }
}
