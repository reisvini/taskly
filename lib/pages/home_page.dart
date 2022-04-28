import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight;
  late double _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          toolbarHeight: _deviceHeight * 0.15,
          title: const Text(
            'Taskly!',
            style: TextStyle(fontSize: 25),
          )),
      body: _taskList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _taskList() {
    return ListView(
      children: [
        ListTile(
          title: const Text("Do homework!",
              style: TextStyle(decoration: TextDecoration.lineThrough)),
          subtitle: Text(DateTime.now.toString()),
          trailing: const Icon(Icons.check_box_outlined, color: Colors.red),
        )
      ],
    );
  }
}
