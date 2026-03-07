import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task 7', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: ListView(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadiusGeometry.zero,
                ),
                margin: EdgeInsets.all(10),
                color: Colors.blue[50],
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.person,
                    color: const Color.fromARGB(255, 15, 94, 159),
                    size: 50,
                  ),
                  title: Text(
                    "Malak Khaled Tantawy",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                  subtitle: Text('Flutter developer'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadiusGeometry.zero,
                ),
                margin: EdgeInsets.all(10),
                color: Colors.blue[50],
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "This user is confused by life :)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadiusGeometry.zero,
                ),
                margin: EdgeInsets.all(10),
                color: Colors.blue[50],
                child: ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_outlined, color: Colors.amber),
                      Icon(Icons.star_outlined, color: Colors.amber),
                      Icon(Icons.star_outlined, color: Colors.amber),
                      Icon(Icons.star_outlined, color: Colors.amber),
                      Icon(Icons.star_half_outlined, color: Colors.amber),
                    ],
                  ),
                  onTap: () {},
                  title: Text(
                    "150 Reviews",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                  trailing: Icon(Icons.share, color: Colors.blue),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadiusGeometry.zero,
                ),
                margin: EdgeInsets.all(10),
                color: Colors.blue[50],
                child: ListTile(
                  title: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Icon(Icons.code, color: Colors.blue)),
                          Expanded(
                            child: Icon(Icons.bug_report, color: Colors.blue),
                          ),
                          Expanded(
                            child: Icon(Icons.coffee, color: Colors.brown[900]),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "EXP:\n-2 Yrs",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          Expanded(
                            child: Text(
                              "Bugs:\n∞",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          Expanded(
                            child: Text(
                              "Coffee:\n∞",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadiusGeometry.zero,
                ),
                margin: EdgeInsets.all(10),
                color: Colors.blue[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "  🎯 My Hoppies:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Text(
                      "  1.Video editing",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Text(
                      "  2.Sleeping",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
