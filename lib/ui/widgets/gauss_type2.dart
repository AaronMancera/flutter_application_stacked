import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../core/viewmodels/gauss_random_model.dart';

class GaussType2 extends StackedView<GaussRandomViewModel> {
  const GaussType2({super.key});

//onviewmodleredit
//Metodo de incio de pantalla
  @override
  void onViewModelReady(GaussRandomViewModel viewModel) {
    // TODO: implement onViewModelReady
    super.onViewModelReady(viewModel);
    //Cuando incia la pantalla llama al metodo de inciar el temporizador
    viewModel.setUpTimer();
  }
//Metodo de salida de pantalla

  @override
  void onDispose(GaussRandomViewModel viewModel) {
    //Cuando sale de la pantalla termina el temporizador
    super.onDispose(viewModel);
    viewModel.cancelTimer();
  }

  @override
  Widget builder(
      BuildContext context, GaussRandomViewModel viewModel, Widget? child) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const Text('Actualizacion del sliderValue cada 5 segundos'),
          // Text(viewModel.sliderValue.toString()),

          const SizedBox(
            height: 20,
          ),
          Center(
            child: Slider(
              min: 0,
              max: 100,
              value: viewModel.sliderValue,
              // divisions: 21,
              onChanged: (value) => viewModel.update(value),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SfLinearGauge(
              markerPointers: [
                LinearShapePointer(
                  value: viewModel.sliderValue,
                ),
                LinearWidgetPointer(
                  value: viewModel.sliderValue,
                              position: LinearElementPosition.outside,
                  child: Container(
                      width: 55,
                      height: 45,
                      child: Center(
                          child: Text(viewModel.sliderValue.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  GaussRandomViewModel viewModelBuilder(BuildContext context) =>
      GaussRandomViewModel();
}
