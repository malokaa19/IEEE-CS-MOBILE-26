import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject5/Screens/Archieved.dart';
import 'package:flutterproject5/Screens/Done.dart';
import 'package:flutterproject5/Screens/Tasks.dart';
import 'package:flutterproject5/Widgets/Shortcut_widgets.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final NotchBottomBarController _controller = NotchBottomBarController(
    index: 0,
  );
  final _pagecontroller = PageController(initialPage: 0);
  List<Widget> get screens => [Tasks(tasks: tasks), Archieved(), Done()];
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  bool isbottomshowsheet = false;
  var textcontroller = TextEditingController();
  var timecontroller = TextEditingController();
  var datecontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  // دي عشان نعمل الداتابيز ولو ماكانش موجود يعملو ويعمل التابل بتاعه
  // ولو كان موجود يفتحو بس
  late Database database;
  List<Map> tasks = [];
  void createDatabase() async {
    database = await openDatabase(
      'path.db',
      version: 1,
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, time TEXT, date TEXT, status TEXT)',
        );

        print("Database created");
      },
      onOpen: (database) async {
        await getDataFromDatabase(database).then((value) {
          tasks = value;
        });
      },
    );
  }

  // ضيفنا البيانات في الداتابيز
  Future insertToDatabase({
    required String title,
    required String time,
    required String date,
    required String status,
  }) async {
    await database.transaction((txn) {
      return txn
          .rawInsert(
            'INSERT INTO tasks(title, time, date, status) VALUES("$title", "$time", "$date", "$status")',
          )
          .then((value) {
            getDataFromDatabase(database).then((value) {
              tasks = value;
              setState(() {});
            });
          });
    });
  }

  // كده فاضل نحصل علي داتا بقا
  Future<List<Map>> getDataFromDatabase(database) async {
    setState(() {});
    return await database.rawQuery('SELECT * FROM tasks');
  }

  @override
  void initState() {
    super.initState();
    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: const Color.fromARGB(255, 168, 138, 172),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu_open_rounded, color: Colors.white),
            ),
            Text(
              "All Tasks",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 168, 138, 172),
      ),
      body: PageView(
        controller: _pagecontroller,
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(screens.length, (index) => screens[index]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 54, 12, 61),
        onPressed: () async {
          if (isbottomshowsheet) {
            if (formkey.currentState!.validate()) {
              await insertToDatabase(
                title: textcontroller.text,
                time: timecontroller.text,
                date: datecontroller.text,
                status: "new",
              ).then((value) {
                setState(() {});
                Navigator.pop(context);
                isbottomshowsheet = false;
              });
            }
          } else {
            _scaffoldkey.currentState!
                .showBottomSheet((context) {
                  return Padding(
                    padding: EdgeInsetsGeometry.all(20),
                    child: Form(
                      key: formkey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          defualtformfield(
                            controller: textcontroller,
                            text: "Task Name",
                            icon: Icons.title,
                            ontap: () {},
                          ),
                          SizedBox(height: 20),
                          defualtformfield(
                            controller: timecontroller,
                            text: "Time",
                            icon: Icons.timelapse,
                            ontap: () {
                              showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              ).then((value) {
                                timecontroller.text = value!.format(context);
                              });
                            },
                          ),
                          SizedBox(height: 20),
                          defualtformfield(
                            controller: datecontroller,
                            text: "Date",
                            icon: Icons.date_range,
                            ontap: () {
                              showDatePicker(
                                context: context,
                                firstDate: DateTime.now(),
                                lastDate: DateTime.parse('3030-12-30'),
                              ).then((value) {
                                datecontroller.text = DateFormat.yMMMd().format(
                                  value!,
                                );
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                })
                .closed
                .then((value) {
                  isbottomshowsheet = false;
                });
            isbottomshowsheet = true;
          }
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        color: const Color.fromARGB(255, 40, 6, 47),
        notchBottomBarController: _controller,
        elevation: 5,
        showLabel: true,
        removeMargins: false,
        bottomBarWidth: 500,
        showShadow: false,
        durationInMilliSeconds: 300,
        bottomBarItems: [
          bottomAppBar(icon: Icons.home_outlined, text: "Tasks"),
          bottomAppBar(icon: Icons.archive_sharp, text: "Archieve"),
          bottomAppBar(icon: Icons.check_box_outlined, text: "Done"),
        ],
        onTap: (value) {
          _pagecontroller.jumpToPage(value);
        },
        kIconSize: 24,
        kBottomRadius: 28,
      ),
    );
  }
}
