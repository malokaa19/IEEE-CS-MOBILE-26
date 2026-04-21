import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterproject5/Cubit/cubit.dart';
import 'package:flutterproject5/Cubit/state.dart';
import 'package:flutterproject5/Widgets/Shortcut_widgets.dart';

class Archieved extends StatelessWidget {
  const Archieved({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppsState>(
      builder: (context, state) {
        final archivedTasks = AppCubit.get(context).archivedTasks;
        return archivedTasks.isEmpty
            ? const Center(
                child: Text(
                  "No Archived Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : buildListUI(context, tasks: archivedTasks);
      },
    );
  }
}
