import 'package:challenge/home/http/http_bindings.dart';
import 'package:challenge/home/http/http_page.dart';
import 'package:challenge/home/http/http_page_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //Array de Páginas da Aplicação
      getPages: [
        GetPage(name: '/', page: () => Homepage(), children: [
          GetPage(
              name: '/item1', page: () => HttpPage(), binding: HttpBindings()),
          GetPage(name: '/item2', page: () => HttpPage2())
        ])
      ],
    );
  }
}
