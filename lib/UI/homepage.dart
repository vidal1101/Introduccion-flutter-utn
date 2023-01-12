import 'package:flutter/material.dart';
import 'package:introduccion_flutter_utn/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 168, 72, 185),
          title: Text('Introduccion flutter'),
          actions: [
            Icon(Icons.alarm),
            SizedBox(width: mediaquery.width * 0.05 ,),
            Icon(Icons.person),
    
          ],
        ),
        body: _BodyHomePage(),
        bottomNavigationBar: ButtonNavigator(),
      ),
    );
  }
}

class _BodyHomePage extends StatelessWidget {
  const _BodyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
        height:  120,
        //width: 200,
       // color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/imagenes/groot.jpeg'),
            ), 

            Column(
              children: [
                Text('text2'),
                Text('text1'),
              ],
            ),

          ],
        ),
        
      );
    
  }
}