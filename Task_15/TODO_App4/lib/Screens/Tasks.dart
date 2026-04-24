import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterproject5/Cubit/cubit.dart';
import 'package:flutterproject5/Cubit/state.dart';
import 'package:flutterproject5/Widgets/Shortcut_widgets.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key, required this.tasks});
  final List<Map> tasks;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppsState>(
      builder: (context, state) {
        final tasks = AppCubit.get(context).tasks;
        return tasks.isEmpty
            ? const Center(
                child: Text(
                  "No Tasks Yet,\nPlease Add Some Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : buildListUI(context, tasks: tasks);
      },
    );
  }
}
