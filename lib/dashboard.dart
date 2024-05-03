import 'package:flutter/material.dart';
import 'package:curso_flutter_01/widgets/pastelChart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:hexcolor/hexcolor.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ancho = MediaQuery.of(context).size.width;
    var alto = MediaQuery.of(context).size.height;

    TextStyle style_titles = const TextStyle(
      color: Colors.white,
      fontSize: 20.0,
    );

    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Mi perfil",
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
            fontFamily: GoogleFonts.sendFlowers().fontFamily,
          ),
        )),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.notifications,
              color: Colors.grey[400],
              size: 25,
            ),
          )
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.grey[400],
          size: 35.0,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: const Alignment(-1.0, 0.1),
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: ancho,
                    height: 150,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pablo Astudillo",
                                style: style_titles,
                                textAlign: TextAlign.left,
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.card_giftcard),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "SI=H-00054157624",
                                        style: style_titles,
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Text(
                                        "12.50",
                                        style: style_titles,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Text(
                                "Ver perfil",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.w3schools.com/w3images/avatar2.png"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              PastelChart(
                saldoMesActual: 200.0,
                saldoMesAnterior: 100.0,
                regarcaMesActual: 200.0,
                pasajemesActual: 50.0,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  "Resumen Septiembre 2022",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bus_alert),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Parada Favorita"),
                                Text("Mi parada Favorita")
                              ],
                            )
                          ],
                        ),
                        Text("33")
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    LinearPercentIndicator(
                      percent: 0.5,
                      lineHeight: 15.0,
                      progressColor: Colors.redAccent,
                      backgroundColor: Colors.grey[400],
                      barRadius: const Radius.circular(16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bus_alert),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Parada Favorita"),
                                Text("Mi parada Favorita")
                              ],
                            )
                          ],
                        ),
                        Text("33")
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    LinearPercentIndicator(
                      percent: 0.5,
                      lineHeight: 15.0,
                      progressColor: Colors.redAccent,
                      backgroundColor: Colors.grey[400],
                      barRadius: const Radius.circular(16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bus_alert),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Parada Favorita"),
                                Text("Mi parada Favorita")
                              ],
                            )
                          ],
                        ),
                        Text("33")
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    LinearPercentIndicator(
                      percent: 0.5,
                      lineHeight: 15.0,
                      progressColor: Colors.redAccent,
                      backgroundColor: Colors.grey[400],
                      barRadius: const Radius.circular(16),
                    ),
                  ],
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.message),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Reclamos, Sugerencias",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.message,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "SOS - ECU 911",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: HexColor("#FF0000"),
      ),
    );
  }
}
