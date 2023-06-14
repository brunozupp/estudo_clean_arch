import 'package:estudo_clean_arch/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarroPage extends StatefulWidget {

  final _controller = GetIt.I.get<CarroController>();

  CarroPage({super.key});

  @override
  State<CarroPage> createState() => _CarroPageState();
}

class _CarroPageState extends State<CarroPage> {

  @override
  void initState() {
    super.initState();

    widget._controller.getCarrosPorCor("vermelho");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Text(
            widget._controller.carro.placa,
          ),
        ),
      ),
    );
  }
}