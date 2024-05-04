import 'package:flutter/material.dart';

class PaginaConEstado extends StatefulWidget {
  const PaginaConEstado({super.key});

  @override
  State<PaginaConEstado> createState() => _PaginaConEstadoState();
}

class _PaginaConEstadoState extends State<PaginaConEstado> {
  var nombre = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pagina con estado'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  hintText: 'Escribe tu nombre',
                  icon: Icon(
                    Icons.person,
                    color: Colors.pinkAccent,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    nombre = value;
                  });
                  print(nombre);
                },
              ),
              const SizedBox(height: 20.0),
              Text(
                nombre,
                style: const TextStyle(fontSize: 32.0),
              ),
            ],
          ),
        ));
  }
}
