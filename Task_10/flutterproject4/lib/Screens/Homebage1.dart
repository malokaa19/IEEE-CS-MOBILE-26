import 'package:flutter/material.dart';
import 'package:flutterproject4/Screens/items.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homebage1 extends StatefulWidget {
  const Homebage1({super.key});

  @override
  State<Homebage1> createState() => _Homebage1State();
}

class _Homebage1State extends State<Homebage1> {
  bool pizza = true;
  bool ice = true;
  bool burger = true;
  bool hot = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 40, 25, 20),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: const Color.fromARGB(255, 40, 25, 20),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: const Color.fromARGB(255, 40, 25, 20),
            ),
            label: "Shopping",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_rounded,
              color: const Color.fromARGB(255, 40, 25, 20),
            ),
            label: "Profile",
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 2,
                          color: const Color.fromARGB(255, 66, 36, 22),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 3,
                          color: const Color.fromARGB(255, 66, 36, 22),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu_open_rounded),
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Catagories",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: burger
                          ? Colors.redAccent[700]
                          : Colors.grey,
                      maxRadius: 40,
                      minRadius: 40,
                      child: IconButton(
                        onPressed: () {
                          setState(() {});
                          burger = !burger;
                        },
                        icon: Icon(
                          FontAwesomeIcons.burger,
                          color: const Color.fromARGB(255, 38, 25, 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Burger",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: ice
                          ? Colors.redAccent[700]
                          : Colors.grey,
                      maxRadius: 40,
                      minRadius: 40,
                      child: IconButton(
                        onPressed: () {
                          ice = !ice;
                          setState(() {});
                        },
                        icon: Icon(
                          FontAwesomeIcons.iceCream,
                          color: const Color.fromARGB(255, 38, 25, 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Ice cream",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: pizza
                          ? Colors.redAccent[700]
                          : Colors.grey,
                      maxRadius: 40,
                      minRadius: 40,
                      child: IconButton(
                        onPressed: () {
                          pizza = !pizza;
                          setState(() {});
                        },
                        icon: Icon(
                          FontAwesomeIcons.pizzaSlice,
                          color: const Color.fromARGB(255, 38, 25, 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Pizza",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: hot
                          ? Colors.redAccent[700]
                          : Colors.grey,
                      maxRadius: 40,
                      minRadius: 40,
                      child: IconButton(
                        onPressed: () {
                          hot = !hot;
                          setState(() {});
                        },
                        icon: Icon(
                          FontAwesomeIcons.mugHot,
                          color: const Color.fromARGB(255, 38, 25, 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Hot Mugs",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              "Top Selling",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Items(
                              image: "assets/images/Burger.png",
                              name: "\"BEEF SPICY\"",
                              price: "\$R 350",
                              description:
                                  "Beef Patty + chili Sause +\nSalad + Tomatoes",
                              type: "food",
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 210,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 55, 8, 8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset("assets/images/Burger.png"),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "\$R 350",
                          style: TextStyle(
                            color: Colors.redAccent[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "\"BEEF SPICY\"",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 62, 8, 8),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Beef Patty + chili Sause +\nSalad + Tomatoes",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Items(
                              image: "assets/images/Pizza.png",
                              name: "\"BACON\"",
                              price: "\$R 250",
                              description:
                                  "Massa,molho espacial\nde tomato mussarela e\n bacon picado",
                              type: "food",
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 210,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 55, 8, 8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          "assets/images/Pizza.png",
                          width: 30,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "\$R 250",
                          style: TextStyle(
                            color: Colors.redAccent[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "\"BACON\"",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 62, 8, 8),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Massa,molho espacial\nde tomato mussarela e\n bacon picado",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Items(
                              image: "assets/images/ice cream.png",
                              name: "\"CHCOCLATE GANACHE\"",
                              price: "\$R 200",
                              description:
                                  "Rich and creamy chocolate \nganache,melting smoothly over your\nice cream for a decadent,\n irresistible treat",
                              type: "food",
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 210,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 55, 8, 8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset("assets/images/ice cream.png"),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "\$R 200",
                          style: TextStyle(
                            color: Colors.redAccent[700],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "\"CHCOCLATE GANACHE\"",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 62, 8, 8),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Rich and creamy chocolate \nganache,melting smoothly over your\nice cream for a decadent,\n irresistible treat",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Items(
                              image: "assets/images/hot chocolate.png",
                              name: "\"HOT CHOCOLATE\"",
                              price: "\$R 100",
                              description:
                                  "Creamy\nrich hot chocolate to warm your soul",
                              type: "drink",
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 210,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 55, 8, 8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.asset("assets/images/hot chocolate.png"),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "\$R 100",
                          style: TextStyle(
                            color: Colors.redAccent[700],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "\"HOT CHOCOLATE\"",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 62, 8, 8),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Creamy\nrich hot chocolate to warm your soul",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
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
    );
  }
}
