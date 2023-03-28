import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../core/viewmodels/counter_model.dart';

//dentro del stackedView lleva dentro el viewmodel que vaya a utilizar
class CounterView extends StackedView<CounterViewModel> {
  const CounterView({super.key});

  @override
  Widget builder(
      BuildContext context, CounterViewModel viewModel, Widget? child) {
    return Scaffold(
      floatingActionButton:
          //La accion la recoje del viewmodel
          FloatingActionButton(onPressed: viewModel.incrementCounter),
      body: Center(
        child: Column(
          children: [
            //Texto del titulo
            Text(
              // viewModel.toString(), - nos da la instancia del viewModel
              viewModel.contador.titulo.toUpperCase(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            //Texto del contador
            Text(
              viewModel.contador.numero.toString(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(BuildContext context) => CounterViewModel();
}
