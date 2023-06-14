import 'package:estudo_clean_arch/core/inject/inject.dart';
import 'package:estudo_clean_arch/layers/presentation/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {

  Inject.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes',
      home: CarroPage(),
    );
  }
}