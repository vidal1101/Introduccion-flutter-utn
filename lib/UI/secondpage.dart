import 'package:flutter/material.dart';
import 'package:introduccion_flutter_utn/widgets/widgets.dart';

class SecondPage extends StatelessWidget {

  final String? nombre;

  const SecondPage({super.key , this.nombre});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              },
               icon: Icon(Icons.arrow_back_ios)),
              Text('${nombre}', 
              style:  TextStyle(
                color: Colors.black, 
              ),),
            ],
          ),
        ),
        bottomNavigationBar: ButtonNavigator(),
      ),
    );
  }
}
