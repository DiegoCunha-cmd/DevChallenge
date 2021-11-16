import 'package:challenge/home/http/repository/repo_http_repository.dart';
import 'package:challenge/repository/i_repo_repository.dart';
import 'package:get/get.dart';

import 'http_controller.dart';

//bindings a serem passados com as rotas

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IRepoRepository>(RepoHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
