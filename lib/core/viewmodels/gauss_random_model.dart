import 'dart:async';
import 'dart:math';

import 'package:stacked/stacked.dart';

class GaussRandomViewModel extends BaseViewModel {
  double _sliderValue = 0;
  double get sliderValue => _sliderValue;
  double _randomNumber = 0;
  //Timer
  late Timer _timer;
  Timer get timer => _timer;
  //Inicio del temporizador
  void setUpTimer(){
    _timer = Timer.periodic(Duration(seconds: 5), (timer) { 
      random();
    });
  }
  //fin del temporizador
  void cancelTimer(){
    _timer.cancel();
  }
  //generador de numero aleatorio y se actualiza el _sideValue
  void random(){
    _randomNumber=Random().nextDouble()*100;
    update(_randomNumber);
    // no hace falta rebuild pues el probio update lo actualiza
    // rebuildUi();
  }
  void update(double value) {
    //roundToDouble -> Redondea a un double a una unidad -> (2.3).roundToDouble(); // 2.0 -> (2.5).roundToDouble(); // 3.0
    _sliderValue = value.roundToDouble();
    //Este metodo es de stack y lo que hace es un setState, es decir, reconstruye la vista
    rebuildUi();
  }
}
