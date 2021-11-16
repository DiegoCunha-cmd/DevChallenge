import 'package:challenge/home/http/http_controller.dart';
import 'package:challenge/model/repo_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

//Classe filha herdando comportamento do controlador pai
class HttpPage extends GetView<HttpController> {
  const HttpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Item 1"),
          backgroundColor: Colors.orange,
        ),
        body: controller.obx((state) {
          //Carregar lista de repositorios retornados pelo Map com tratamento de erros
          return ListView.builder(
              itemBuilder: (_, index) {
                final RepoModel item = state[index];
                return ListTile(title: Text(item.name));
              },
              itemCount: state.length);
        }, onError: (error) {
          return Center(child: Text(error));
        }));
  }
}
