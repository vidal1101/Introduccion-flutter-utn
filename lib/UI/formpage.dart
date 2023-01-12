import 'package:flutter/material.dart';
import 'package:introduccion_flutter_utn/forms/form_user.dart';
import 'package:introduccion_flutter_utn/helpers/inputdecoration.dart';
import 'package:provider/provider.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
      ),
      body: _BodyForms() ,
    );
  }
}

class _BodyForms extends StatelessWidget {
  const _BodyForms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final formprovider = Provider.of<FormUser>(context);

    return Container(
      child: SingleChildScrollView(
        child: Form(
          key: formprovider.formkey,
          autovalidateMode: AutovalidateMode.onUserInteraction ,
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecortacionCustom.getInputDecoration(
                    labelText: "Nombre",
                    hintText: "escriba su nombre",
                    prefixIcon: Icons.person,
                  ),
                  onChanged: (value) {
                    print(value);
                    formprovider.nombre = value;
                  },
                  validator: (value) {
                    if(value!.isEmpty) return "el campo es obligatorio";
                  },
                ),
              ), 
              
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecortacionCustom.getInputDecoration(
                    labelText: "Apellido",
                    hintText: "ecriba sus apellidos",
                    prefixIcon: Icons.person,
                  ),
                  onChanged: (value) {
                    print(value);
                    formprovider.Apellido = value;
                  },
                  validator: (value) {
                    if(value!.isEmpty) return "el campo es obligatorio";
                  },
                ),
              ),
              
              
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecortacionCustom.getInputDecoration(
                    labelText: "Edad",
                    hintText: "",
                    prefixIcon: Icons.date_range_outlined,
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if(value!.isEmpty) return "el campo es obligatorio";
                  },
                ),
              ),
              
              
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecortacionCustom.getInputDecoration(
                    labelText: "Telefono",
                    hintText: "12345678",
                    prefixIcon: Icons.call,
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if(value!.isEmpty) return "el campo es obligatorio";
                  },
                ),
              ), 
              
              
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecortacionCustom.getInputDecoration(
                    labelText: "Correo",
                    hintText: "example@gmail.com",
                    prefixIcon: Icons.email,
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if(value!.isEmpty) return "el campo es obligatorio";
                  },
                ),
              ), 
              SizedBox(height: 20,), 
        
              MaterialButton(
                onPressed: () {

                  FocusScope.of(context).unfocus();
                  
                  if(formprovider.formkey.currentState!.validate()){

                    Map<String , dynamic> data ={
                      "nombre": formprovider.nombre,
                      "apellido" : formprovider.Apellido,
                    };
                    print(data);

                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Falta información')));
                  }
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration:  BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25.0)
        
                  ),
                  child: Center(child: Text(
                    'Registrarse', 
                    style: TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold, 
                    ),
                  )),
                ),
              ), 
              SizedBox(height: 20,), 
        
            ],
          ),
        ),
      ),
    );
  }
}