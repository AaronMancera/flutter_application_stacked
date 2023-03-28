class Contador {
  int numero;
  String titulo;
  Contador({required this.numero,required this.titulo});
  String toString(){
    final String string='$titulo - $numero';
    return string;
  }
}