import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget{
  const ScaffoldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Example'),
      ),
      body: Center(
        child: Text(
          'My name is Tung',
          style: TextStyle(
              fontSize: 24,
              color: Colors.red
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Ban da nhan vao nut Alarm');
        },
        child: Icon(Icons.access_alarm),
      ),
    );
  }
}


class RowExample extends StatelessWidget{
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.email),
            Text('lenhattung@gmail.com')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
