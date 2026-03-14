import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  const Items({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    required this.type,
  });
  final String image;
  final String name;
  final String price;
  final String description;
  final String type;

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  String? size;
  int? level;
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
      endDrawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        elevation: 5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.food_bank_outlined, size: 30, color: Colors.black),
            SizedBox(width: 5),
            Text(
              "RESTAURANT",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Image.asset(widget.image),
          SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.price,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.redAccent[700],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 3),
                  Text(
                    widget.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(widget.description, textAlign: TextAlign.center),
            ],
          ),
          SizedBox(height: 10),
          if (widget.type == "food") ...[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "SIZE => ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RadioListTile(
              value: "Small",
              groupValue: size,
              onChanged: (val) {
                setState(() {});
                size = val;
              },
              activeColor: Colors.redAccent[700],
              title: Text("Small"),
            ),
            RadioListTile(
              value: "Medium",
              groupValue: size,
              onChanged: (val) {
                setState(() {});
                size = val;
              },
              activeColor: Colors.redAccent[700],
              title: Text("Medium"),
            ),
            RadioListTile(
              value: "Large",
              groupValue: size,
              onChanged: (val) {
                setState(() {});
                size = val;
              },
              title: Text("Large"),
              activeColor: Colors.redAccent[700],
            ),
          ] else if (widget.type == 'drink') ...[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Suger level => ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RadioListTile(
              value: 0,
              groupValue: level,
              onChanged: (val) {
                setState(() {});
                level = val;
              },
              title: Text("No Suger"),
              activeColor: Colors.redAccent[700],
            ),
            RadioListTile(
              value: 1,
              groupValue: level,
              onChanged: (val) {
                setState(() {});
                level = val;
              },
              title: Text("With Suger"),
              activeColor: Colors.redAccent[700],
            ),
          ],
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 11, 7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "ADD TO CARD",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
