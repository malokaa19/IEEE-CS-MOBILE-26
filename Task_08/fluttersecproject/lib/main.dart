import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            weight: 30,
            size: 30,
          ),
          backgroundColor: Colors.transparent,
          actions: [
            Icon(
              Icons.bookmark_border,
              color: Colors.white,
              weight: 30,
              size: 30,
            ),
            SizedBox(height: 10, width: 20),
            Icon(
              Icons.save_alt,
              color: const Color.fromARGB(255, 255, 255, 255),
              weight: 30,
              size: 30,
            ),
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              'https://i.pinimg.com/736x/72/d9/af/72d9af964d384fc2a16fd087c1062a7c.jpg',
              fit: BoxFit.cover,
            ),
            DraggableScrollableSheet(
              maxChildSize: 0.8,
              minChildSize: 0.2,
              initialChildSize: 0.5,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(vertical: 8),
                            height: 5,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              controller: scrollController,
                              children: [
                                Card(
                                  color: Colors.transparent,
                                  elevation: 0.0,
                                  child: ListTile(
                                    title: Text(
                                      "Homemade Ramen",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "By June Xie",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.stars,
                                          color: Colors.amber,
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                            color: Colors.amber,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 30, height: 10),
                                    Container(
                                      padding: EdgeInsets.all(7),
                                      margin: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Colors.blue[50],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 200,
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.timelapse_rounded,
                                            color: Colors.blue,
                                            size: 50,
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "3h 30 min",
                                            style: TextStyle(
                                              color: Colors.blue[900],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 50),
                                    Container(
                                      padding: EdgeInsets.all(7),
                                      margin: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Colors.blue[50],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 200,
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.person,
                                              color: Colors.blue,
                                              size: 50,
                                            ),
                                          ),

                                          SizedBox(height: 10),
                                          Text(
                                            "Serves 4",
                                            style: TextStyle(
                                              color: Colors.blue[900],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 50),
                                    Container(
                                      padding: EdgeInsets.all(7),
                                      margin: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Colors.blue[50],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 200,
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.fire,
                                            color: Colors.blue,
                                            size: 50,
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "Intermediate",
                                            style: TextStyle(
                                              color: Colors.blue[900],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 50, width: 20),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text(
                                      "Ingredients",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.shopping_cart_outlined,
                                      color: const Color.fromARGB(
                                        255,
                                        1,
                                        75,
                                        136,
                                      ),
                                      size: 35,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30, width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 20),
                                        Text(
                                          "For Chicken Dashi",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 28,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Text(
                                          "8 Cups",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 30),
                                        Text(
                                          "Low sodium chicken broth",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        SizedBox(width: 15),
                                        Text(
                                          "16",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 68),
                                        Text(
                                          "Dried Shiitake mushrooms",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        SizedBox(width: 15),
                                        Text(
                                          "30 g",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 50),
                                        Text(
                                          "Kombu (about 10\" square piece)",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15),
                                        Text(
                                          "20 g",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 50),
                                        Text(
                                          "Dried Bonitio flakes",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 30),
                                    Row(
                                      children: [
                                        SizedBox(width: 20),
                                        Text(
                                          "For Tare and Chashu",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 28,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15),
                                        Text(
                                          "1 1/4 Cups",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 68),
                                        Text(
                                          "Low sodium soy sauce",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15),
                                        Text(
                                          "1 1/4 Cups",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 68),
                                        Text(
                                          "Mirin",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15),
                                        Text(
                                          "1/2 Cup",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 95),
                                        Text(
                                          "Sake",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15),
                                        Text(
                                          "1 1/2 Cups",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 68),
                                        Text(
                                          "Water",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
            ),
          ],
        ),
      ),
    );
  }
}
