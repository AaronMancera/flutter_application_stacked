import 'package:flutter/material.dart';
import 'package:flutter_application_stcaked/core/viewmodels/gauss_model.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GaussType2 extends StackedView<GaussViewModel> {
  const GaussType2({super.key});
//onviewmodleredit
//Metodo de inciio de pantalla
  @override
  void onViewModelReady(GaussViewModel viewModel) {
    // TODO: implement onViewModelReady
    super.onViewModelReady(viewModel);
  }
//Metodo de salida de pantalla

  @override
  void onDispose(GaussViewModel viewModel) {
    super.onDispose(viewModel);
  }

  @override
  Widget builder(
      BuildContext context, GaussViewModel viewModel, Widget? child) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Slider(
            min: 0,
            max: 100,
            value: viewModel.sliderValue,
            // divisions: 21,
            onChanged: (value) => viewModel.update(value),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SfLinearGauge(
              markerPointers: [
                LinearShapePointer(value: viewModel.sliderValue)
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  GaussViewModel viewModelBuilder(BuildContext context) => GaussViewModel();
}
