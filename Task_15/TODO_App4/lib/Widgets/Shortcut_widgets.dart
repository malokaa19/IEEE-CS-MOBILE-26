import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject5/Cubit/cubit.dart';

Widget listItem({
  required Map model,
  required VoidCallback archiveClick,
  required VoidCallback deleteClick,
  required VoidCallback doneClick,
}) {
  return ListTile(
    leading: IconButton(
      onPressed: doneClick,
      icon: model['status'] == 'done'
          ? const Icon(Icons.check_box, color: Color.fromARGB(255, 54, 12, 61))
          : const Icon(
              Icons.check_box_outline_blank,
              color: Color.fromARGB(255, 54, 12, 61),
            ),
    ),
    title: Row(
      children: [
        Expanded(
          child: Text(
            model['title'],
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 20),

        IconButton(
          onPressed: archiveClick,
          icon: model['status'] == 'archived'
              ? const Icon(
                  Icons.archive,
                  color: Color.fromARGB(255, 54, 12, 61),
                )
              : const Icon(
                  Icons.archive_outlined,
                  color: Color.fromARGB(255, 54, 12, 61),
                ),
        ),

        IconButton(
          onPressed: deleteClick,
          icon: const Icon(
            Icons.delete,
            color: Color.fromARGB(255, 54, 12, 61),
          ),
        ),
      ],
    ),
    subtitle: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          model['time'],
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
        Text(
          model['date'],
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}

Widget buildListUI(BuildContext context, {required List<Map> tasks}) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.93,
          height: MediaQuery.of(context).size.height * 0.73,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: ListView.separated(
            itemBuilder: (context, index) => listItem(
              model: tasks[index],
              archiveClick: () {
                if (tasks[index]['status'] == 'archived') {
                  AppCubit.get(
                    context,
                  ).updateData(status: "new", id: tasks[index]['id']);
                } else {
                  AppCubit.get(
                    context,
                  ).updateData(status: "archived", id: tasks[index]['id']);
                }
              },
              deleteClick: () {
                AppCubit.get(
                  context,
                ).deleteFromDatabase(id: tasks[index]['id']);
              },
              doneClick: () {
                if (tasks[index]['status'] == 'done') {
                  AppCubit.get(
                    context,
                  ).updateData(status: "new", id: tasks[index]['id']);
                } else {
                  AppCubit.get(
                    context,
                  ).updateData(status: "done", id: tasks[index]['id']);
                }
              },
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: tasks.length,
          ),
        ),
      ],
    ),
  );
}

BottomBarItem bottomAppBar({required IconData icon, required String text}) =>
    BottomBarItem(
      inActiveItem: Icon(icon, color: Colors.white),
      activeItem: Icon(icon, color: const Color.fromARGB(255, 35, 14, 70)),
      itemLabelWidget: Text(text, style: TextStyle(color: Colors.white)),
    );
Widget defualtformfield({
  required TextEditingController? controller,
  required String text,
  required IconData icon,
  required GestureTapCallback ontap,
}) => TextFormField(
  controller: controller,
  validator: (value) {
    if (value!.isEmpty) {
      return "please enter tour task name";
    } else {
      return null;
    }
  },
  decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    labelText: text,
    prefixIcon: Icon(icon, color: Colors.black),
  ),
  onTap: ontap,
);
