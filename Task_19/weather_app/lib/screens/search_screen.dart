import 'package:flutter/material.dart';
import 'package:weather_app/screens/homePage.dart';
import 'package:weather_app/server/ApiHelper.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController cityController = TextEditingController();

  @override
  void dispose() {
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'City Name',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF003D4D),
        shadowColor: Colors.black.withOpacity(0.5),
      ),
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
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  width: 300,
                  child: TextFormField(
                    controller: cityController,
                    style: const TextStyle(color: Colors.white),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: 'Enter city name',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(70)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.5),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter a city name';
                      }

                      return null;
                    },
                  ),
                ),

                const SizedBox(height: 10),

                MaterialButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await ApiHelper().getData(cityController.text).then((
                        value,
                      ) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(weathermodel: value),
                          ),
                        );
                      });
                    }
                  },
                  color: const Color(0xFF00C996),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
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

// https://api.weatherapi.com/v1/forecast.json?key=f92417adebf74911ae6223847231204&q=cairo
