import 'package:flutter/material.dart';
import 'package:curso_flutter_01/dashboard.dart';
import 'package:curso_flutter_01/background.dart';
import 'package:curso_flutter_01/tarjetas.dart';
import 'package:curso_flutter_01/pagina_con_estado.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void _onPressedDashboard(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const Dashboard();
      },
    ));
  }

  void _onPressedBackground(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const BackgroundPage();
      },
    ));
  }

  void _onPressedTarjetas(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const TarjetasPage();
      },
    ));
  }

  void _onPressedEstados(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PaginaConEstado(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: GestureDetector(
              onTap: () {
                _onPressedDashboard(context);
              },
              child: const Center(
                  child: Text(
                'Curso de Flutter',
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                ),
              ))),
          backgroundColor: Colors.white,
          actions: const [
            Icon(Icons.person, color: Colors.black12),
            Icon(
              Icons.settings,
              color: Colors.amber,
            )
          ]),
      body: Container(
        color: Colors.grey,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  _onPressedDashboard(context);
                },
                child: Container(
                    width: 250.0,
                    margin: const EdgeInsets.only(bottom: 50.0),
                    child: const Center(
                      child: Text("Hola mundo",
                          style: TextStyle(
                              color: Colors.redAccent, fontSize: 28.0)),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                    "En este curso, estamos aprendiendo Flutter, con los estudiantes de la carrera de software," +
                        "y estudiantes apacionados con la programación y el desarrollo de aplicaciones",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 18.0)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      _onPressedDashboard(context);
                    },
                    child: Text("Dashboard"),
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 10.0),
                  MaterialButton(
                    onPressed: () {
                      _onPressedEstados(context);
                    },
                    child: Text("Estados"),
                    color: Colors.green,
                  ),
                  const SizedBox(width: 10.0),
                  MaterialButton(
                    onPressed: () {
                      _onPressedBackground(context);
                    },
                    child: const Text("Background"),
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 10.0),
                  MaterialButton(
                    onPressed: () {
                      _onPressedTarjetas(context);
                    },
                    child: const Text("Tarjetas"),
                    color: Colors.pink,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
