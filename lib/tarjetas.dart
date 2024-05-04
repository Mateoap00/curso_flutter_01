import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class TarjetasPage extends StatefulWidget {
  const TarjetasPage({super.key});

  @override
  State<TarjetasPage> createState() => _TarjetasPageState();
}

class _TarjetasPageState extends State<TarjetasPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isLandscape = mediaQuery.orientation == Orientation.landscape;

    var ancho = MediaQuery.of(context).size.width;
    var alto = MediaQuery.of(context).size.height;

    TextStyle style_titles = const TextStyle(
      color: Colors.white,
      fontSize: 15.0,
    );

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Icon(
              Icons.logo_dev,
              color: Colors.grey[800],
              size: 40.0,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications,
                color: Colors.grey[800],
                size: 25,
              ),
            )
          ],
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
            size: 35.0,
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10.0,
                        left: 20.0,
                      ),
                      child: Text(
                        "Tarjetas",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: GoogleFonts.sansita().fontFamily,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: isLandscape ? ancho * 0.50 : ancho * 0.80,
                      height: isLandscape ? alto * 0.45 : alto * 0.20,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                              left: 20.0,
                            ),
                            child: Icon(
                              Icons.credit_card,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10.0,
                              left: 20.0,
                            ),
                            child: Text(
                              "\$999.99",
                              style: style_titles,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10.0,
                              left: 20.0,
                            ),
                            child: Text(
                              "CURA095875876",
                              style: style_titles,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10.0,
                              left: 20.0,
                            ),
                            child: Text(
                              "12/12/2024",
                              style: style_titles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[400],
                    size: 40,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: isLandscape ? ancho * 0.15 : ancho * 0.35,
                      height: isLandscape ? alto * 0.35 : alto * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: Icon(
                              Icons.route,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10.0,
                            ),
                            child: Text(
                              "Recorrido",
                              style: style_titles,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: isLandscape ? ancho * 0.15 : ancho * 0.35,
                      height: isLandscape ? alto * 0.35 : alto * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: Icon(
                              Icons.receipt_long,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10.0,
                            ),
                            child: Text(
                              "Recargas",
                              style: style_titles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: isLandscape ? ancho * 0.15 : ancho * 0.35,
                      height: isLandscape ? alto * 0.35 : alto * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: Icon(
                              Icons.block,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10.0,
                            ),
                            child: Text(
                              "Bloquear",
                              style: style_titles,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: isLandscape ? ancho * 0.15 : ancho * 0.35,
                      height: isLandscape ? alto * 0.35 : alto * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10.0,
                            ),
                            child: Text(
                              "Predeterminada",
                              style: style_titles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: isLandscape ? ancho * 0.35 : ancho * 0.75,
                      height: isLandscape ? alto * 0.25 : alto * 0.10,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              right: 5.0,
                            ),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5.0,
                            ),
                            child: Text(
                              "Puntos de recarga",
                              style: style_titles,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: BottomAppBar(
        //   height: 60,
        //   color: HexColor("#fff"),
        //   child: Row(
        //     children: [
        //       IconButton(
        //         icon: Icon(
        //           Icons.person,
        //           color: Colors.grey[800],
        //         ),
        //         onPressed: () {},
        //       ),
        //       Spacer(), // Use Spacer to push the next IconButton to the end
        //       IconButton(
        //         icon: Icon(
        //           Icons.route,
        //           color: Colors.grey[800],
        //         ),
        //         onPressed: () {},
        //       ),
        //       Spacer(),
        //       IconButton(
        //         icon: Icon(
        //           Icons.bus_alert,
        //           color: Colors.grey[800],
        //         ),
        //         onPressed: () {},
        //       ),
        //       Spacer(), // Use Spacer to push the next IconButton to the end
        //       IconButton(
        //         icon: Icon(
        //           Icons.credit_card,
        //           color: Colors.redAccent,
        //         ),
        //         onPressed: () {},
        //       ),
        //     ],
        //   ),
        // ),
        floatingActionButton: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          label: const Text(
            "Agregar Tarjeta",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: HexColor("#5CDB95"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            fixedSize: const Size(
              175,
              50,
            ),
          ),
        ));
  }
}
