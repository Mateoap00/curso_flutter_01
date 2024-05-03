import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    TextStyle titlesStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Mi perfil",
          style: TextStyle(color: Colors.grey, fontSize: 18),
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(25),
            ),
            width: width,
            height: height * 0.2,
            child: Row(
              children: [
                // Image.network(
                //   "https://www.w3schools.com/w3images/avatar2.png",
                //   width: 100,
                //   height: 100,)
                Container(
                  width: 75,
                  height: 75,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.w3schools.com/w3images/avatar2.png"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pablo Astudillo",
                      style: titlesStyle,
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.card_giftcard),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "SI=H-00054157624",
                          style: titlesStyle,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "12.50",
                          style: titlesStyle,
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
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
