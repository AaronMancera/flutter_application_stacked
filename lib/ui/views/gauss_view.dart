import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_stcaked/ui/widgets/gauss_type1.dart';
import 'package:flutter_application_stcaked/ui/widgets/gauss_type2.dart';

class GaussView extends StatelessWidget {
  const GaussView({super.key});

  @override
  Widget build(BuildContext context) {
    //necesita ser devuelto en un scaffold o da el siguiente error -No Material widget found. Slider widgets require a Material widget ancestor. In Material Design, most widgets are conceptually "printed" on a sheet of material. In Flutter's material library, that material is represented by the Material widget. It is the Material widget that renders ink splashes, for instance. Because of this, many material library widgets require that there be a Material widget in the tree above them. To introduce a Material widget, you can either directly include one, or use a widget that contains Material itself, such as a Card, Dialog, Drawer, or Scaffold.
    return Scaffold(body: GaussType2());
  }
}