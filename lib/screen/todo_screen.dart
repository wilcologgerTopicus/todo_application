import 'package:flutter/material.dart';

import '../components/add_item.dart';
import '../model/todo.dart';
import 'detail_screen.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Todo> todos = List.generate(
      20,
      (index) => Todo(
        'Todo $index',
        'A description of what needs to be done for Todo $index',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: Column(
        children: [
          AddItemDing(),
        ],
      ),

      // ListView.builder(
      //   itemCount: todos.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text(todos[index].title),
      //       // When a user taps the ListTile, navigate to the DetailScreen.
      //       // Notice that you're not only creating a DetailScreen, you're
      //       // also passing the current todo through to it.
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const DetailScreen(),
      //             // Pass the arguments as part of the RouteSettings. The
      //             // DetailScreen reads the arguments from these settings.
      //             settings: RouteSettings(
      //               arguments: todos[index],
      //             ),
      //           ),
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}
