import 'package:flutter/material.dart';
import 'package:sim/widgets/footer.dart';
import 'package:sim/widgets/navbar.dart';
import 'package:sim/widgets/user_table.dart';

class PageQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Padding(padding: EdgeInsets.all(5), child: Center(child: (UserTable()))),
      bottomNavigationBar: MyFooter(),

    );
  }
}