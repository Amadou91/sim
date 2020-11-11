import 'package:flutter/material.dart';
import 'package:sim/widgets/footer.dart';
import 'package:sim/widgets/navbar.dart';
import 'package:sim/widgets/user_table.dart';

class PageUsers extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
          child: (UserTable())),
      bottomNavigationBar: MyFooter(),
    );
  }
}
