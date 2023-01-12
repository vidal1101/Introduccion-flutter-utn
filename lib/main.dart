import 'package:flutter/material.dart';
import 'package:introduccion_flutter_utn/forms/form_user.dart';
import 'package:introduccion_flutter_utn/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FormUser() ,
        ), 
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: 'homepage',
        routes: getRoutes(),
      ),
    );
  }
}
