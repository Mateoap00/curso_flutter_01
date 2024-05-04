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

              final initial = name[0].toUpperCase();

              return ListTile(
                leading: CircleAvatar(child: Text(initial)),
                title: Text(name),
                subtitle: Text(email + ' - ' + celular + ' - ' + cedula),
              );
            },
          ),
        ),
      ),
    );
  }
}
