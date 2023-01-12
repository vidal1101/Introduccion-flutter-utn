import 'package:flutter/material.dart';
import 'package:introduccion_flutter_utn/UI/ui.dart';


Map<String, WidgetBuilder> getRoutes(){

  return <String, WidgetBuilder> {
    "homepage"   :(_) => HomePage(),
    "secondpage" :(_) => SecondPage(),
    "formpage"   :(_) => FormPage(),
  };
}
