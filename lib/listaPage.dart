import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<Map<String, dynamic>> items = [
    {
      'name': 'John Cena',
      'email': 'johndoe@example.com',
    },
    {
      'name': 'Jane Smith',
      'email': 'janesmith@example.com',
    },
    {
      'name': 'Robert Johnson',
      'email': 'robertjohnson@example.com',
    },
    {
      'name': 'Emily Davis',
      'email': 'emilydavis@example.com',
    },
    {
      'name': 'Michael Brown',
      'email': 'michaelbrown@example.com',
    },
    {'name': 'Maria Garcia', 'email': 'email@mail.com'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              final item = items[index];
              final name = item['name'];
              final email = item['email'];

              final initial = name[0].toUpperCase();

              if (name == 'John Cena') {
                return ListTile(
                  leading: CircleAvatar(
                    child: Image.network(
                      'https://images.mubicdn.net/images/cast_member/34836/cache-597973-1602713164/image-w856.jpg?size=800x',
                    ),
                  ),
                  title: Text(name),
                  subtitle: Text(email),
                );
              } else {
                return ListTile(
                  leading: CircleAvatar(child: Text(initial)),
                  title: Text(name),
                  subtitle: Text(email),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
