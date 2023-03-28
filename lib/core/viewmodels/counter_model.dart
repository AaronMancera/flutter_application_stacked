import 'package:flutter_application_stcaked/core/models/contador.dart';
import 'package:stacked/stacked.dart';
//se declara que es un viewmodel y se realizan las ejecuciones aqui
class CounterViewModel extends BaseViewModel {
    final Contador _contador = Contador(numero: 0, titulo: 'Mi contador');
    //metodo get para que lo recoja la vista
    Contador get contador => _contador;

    void incrementCounter() {
      _contador.numero++;
      //Este metodo es de stack y lo que hace es un setState, es decir, reconstruye la vista
      rebuildUi();
    }
}