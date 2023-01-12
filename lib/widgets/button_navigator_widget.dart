import 'package:flutter/material.dart';
import 'package:introduccion_flutter_utn/UI/ui.dart';
import 'package:introduccion_flutter_utn/helpers/constantes.dart';

class ButtonNavigator extends StatelessWidget {
  const ButtonNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;

    return Container(
      height: mediaquery.height * 0.10,
      decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
            onPressed: () {
              print('estoy en persona');

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(nombre: 'Juan'),
                  ));
            },
            child: Icon(
              Icons.person,
              size: mediaquery.height * 0.06,
              color: Constantes.colorIcons,
            ),
          ),
          Icon(
            Icons.home,
            size: mediaquery.height * 0.06,
            color: Constantes.colorIcons,
          ),
          MaterialButton(
            onPressed: () => Navigator.pushNamed(context, 'formpage'),
            child: Icon(
              Icons.format_align_justify_sharp,
              size: mediaquery.height * 0.06,
              color: Constantes.colorIcons,
            ),
          ),
        ],
      ),
    );
  }
}
