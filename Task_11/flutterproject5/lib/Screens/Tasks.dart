import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.93,
            height: MediaQuery.of(context).size.height * 0.730,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check_box,
                    color: const Color.fromARGB(255, 54, 12, 61),
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      "flutter Project 1",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.archive,
                        color: const Color.fromARGB(255, 54, 12, 61),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: const Color.fromARGB(255, 54, 12, 61),
                      ),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "5:05 PM",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      "Mar 18 2026",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
