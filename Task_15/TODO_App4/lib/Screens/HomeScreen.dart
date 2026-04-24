import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterproject5/Cubit/cubit.dart';
import 'package:flutterproject5/Cubit/state.dart';
import 'package:flutterproject5/Widgets/Shortcut_widgets.dart';
import 'package:intl/intl.dart';

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

  final _scaffoldkey = GlobalKey<ScaffoldState>();
  var textcontroller = TextEditingController();
  var timecontroller = TextEditingController();
  var datecontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppsState>(
        listener: (context, state) {},
        builder: (context, state) {
          List<String> titles = [
            '${AppCubit.get(context).tasks.length} tasks',
            '${AppCubit.get(context).archivedTasks.length} archived',
            '${AppCubit.get(context).doneTasks.length} done',
          ];
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
                    titles[AppCubit.get(context).currentindex],
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
              children: List.generate(
                AppCubit.get(context).screens.length,
                (index) => AppCubit.get(context).screens[index],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 54, 12, 61),
              onPressed: () async {
                if (AppCubit.get(context).isBottomSheetShown) {
                  if (formkey.currentState!.validate()) {
                    await AppCubit.get(context)
                        .insertToDatabase(
                          title: textcontroller.text,
                          time: timecontroller.text,
                          date: datecontroller.text,
                          status: "new",
                        )
                        .then((value) {
                          Navigator.pop(context);
                          AppCubit.get(context).isBottomSheetShown = false;
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
                                      timecontroller.text = value!.format(
                                        context,
                                      );
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
                                      datecontroller.text = DateFormat.yMMMd()
                                          .format(value!);
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
                        AppCubit.get(context).isBottomSheetShown = false;
                      });
                  AppCubit.get(context).isBottomSheetShown = true;
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
                AppCubit.get(context).changeindex(value);
              },
              kIconSize: 24,
              kBottomRadius: 28,
            ),
          );
        },
      ),
    );
  }
}
