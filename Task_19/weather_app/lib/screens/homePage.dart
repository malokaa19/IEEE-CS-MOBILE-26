import 'package:flutter/material.dart';
import 'package:weather_app/models/weathermodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.weathermodel});
  final Weathermodel weathermodel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isclicked = false;
  late var list = widget.weathermodel.forecastday[0].hour;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF003D4D), Color(0xFF00C996)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 19, 27, 14),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Today\'s Weather',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                AnimatedContainer(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: isclicked == true ? 380 : 230,
                  duration: const Duration(milliseconds: 500),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.weathermodel.name,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '${widget.weathermodel.tempc}°C',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        children: [
                          Image(
                            image: NetworkImage(
                              'https:${widget.weathermodel.mainicon}',
                            ),
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(width: 7.0),
                          Text(
                            'Heavy Rain',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isclicked = !isclicked;
                              });
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  'See Details',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              index > 11
                                  ? Text(
                                      '${list[index].time.split(' ')[1]} PM',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    )
                                  : Text(
                                      '${list[index].time.split(' ')[1]} AM',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                              Text(
                                '${list[index].tempC}°C',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Image(
                                image: NetworkImage(
                                  'https:${list[index].icon}',
                                ),
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                          separatorBuilder: (context, index) => Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 10,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          itemCount: 6,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 19, 27, 14),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Weather this work',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  height: 140,
                  width: double.infinity,
                  child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.all(20),
                      height: 140,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: NetworkImage(
                              'https:${widget.weathermodel.forecastday[index].listicon}',
                            ),
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            widget.weathermodel.forecastday[index].date,
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '${widget.weathermodel.forecastday[index].avgtempC}°C',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: 20.0),
                    itemCount: widget.weathermodel.forecastday.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
