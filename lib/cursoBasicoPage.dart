import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class CursoBasicoPage extends StatefulWidget {
  const CursoBasicoPage({super.key});

  @override
  State<CursoBasicoPage> createState() => _CursoBasicoPageState();
}

class _CursoBasicoPageState extends State<CursoBasicoPage> {
  List<dynamic> data = [];

  Future<void> fetchData() async {
    final response =
        await http.get(Uri.parse('https://www.yanditv.com/api/curso_basico'));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isLandscape = mediaQuery.orientation == Orientation.landscape;

    var ancho = MediaQuery.of(context).size.width;
    // var alto = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              final student = data[index];
              final name = student['nombre'];
              final cedula = student['cedula'];
              final email = student['correo'];
              final celular = student['celular'];

              final carrera =
                  (student['carrera'] == '') ? 'EXTERNO' : student['carrera'];

              final initial = name[0].toUpperCase();

              // return ListTile(
              //   leading: CircleAvatar(child: Text(initial)),
              //   title: Text(name),
              //   subtitle: Text(email + ' - ' + celular + ' - ' + cedula),
              // );

              return Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                  width: isLandscape ? ancho * 0.50 : ancho * 0.80,
                  //height: isLandscape ? alto * 0.45 : alto * 0.35,
                  decoration: BoxDecoration(
                    color: (carrera == "EXTERNO")
                        ? HexColor('#008CB9')
                        : Colors.red[800],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(child: Text(initial)),
                        Text(
                          name.toString().toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'CI: $cedula',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          email,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          celular,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: ancho * 0.55),
                            Text(
                              carrera,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
