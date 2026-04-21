import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterproject5/Screens/Archieved.dart';
import 'package:flutterproject5/Screens/Done.dart';
import 'package:flutterproject5/Screens/Tasks.dart';
import 'package:sqflite/sqflite.dart';
import 'state.dart';

class AppCubit extends Cubit<AppsState> {
  AppCubit() : super(AppsInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  List<Widget> get screens => [Tasks(tasks: tasks), Archieved(), Done()];
  late Database database;

  List<Map> tasks = [];
  List<Map> archivedTasks = [];
  List<Map> doneTasks = [];

  bool isBottomSheetShown = false;

  // 🟢 Create Database
  void createDatabase() async {
    database = await openDatabase(
      'path.db',
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE tasks (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, time TEXT, date TEXT, status TEXT)',
        );
      },
      onOpen: (db) {
        getDataFromDatabase(db);
      },
    );

    emit(AppCreateDatabaseState());
  }

  // 🟢 Insert
  Future<void> insertToDatabase({
    required String title,
    required String time,
    required String date,
    required String status,
  }) async {
    await database.transaction((txn) async {
      await txn.rawInsert(
        'INSERT INTO tasks(title, time, date, status) VALUES("$title", "$time", "$date", "$status")',
      );
    });

    getDataFromDatabase(database);
    emit(AppInsertDatabaseSuccessState());
  }

  // 🟢 Get Data
  Future<void> getDataFromDatabase(Database db) async {
    tasks = [];
    archivedTasks = [];
    doneTasks = [];

    final List<Map> data = await db.rawQuery('SELECT * FROM tasks');

    for (var element in data) {
      if (element['status'] == 'new') {
        tasks.add(element);
      } else if (element['status'] == 'archived') {
        archivedTasks.add(element);
      } else if (element['status'] == 'done') {
        doneTasks.add(element);
      }
    }

    emit(AppGetDatabaseSuccessState());
  }

  // 🟢 Update
  Future<void> updateData({required String status, required int id}) async {
    await database.rawUpdate('UPDATE tasks SET status = ? WHERE id = ?', [
      status,
      id,
    ]);
    getDataFromDatabase(database);
    emit(AppUpdateDatabaseState());
  }

  // 🟢 Delete
  Future<void> deleteFromDatabase({required int id}) async {
    await database.rawDelete('DELETE FROM tasks WHERE id = ?', [id]);
    getDataFromDatabase(database);
  }
}
