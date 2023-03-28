import 'package:stacked/stacked.dart';

class GaussViewModel extends BaseViewModel {
  double _sliderValue = 0;
  double get sliderValue => _sliderValue;
  void update(double value) {
    _sliderValue = value;
    //Este metodo es de stack y lo que hace es un setState, es decir, reconstruye la vista
    rebuildUi();
  }
}
