import 'package:flutter/material.dart';
import 'package:sim/widgets/auth_table.dart';
import 'package:sim/widgets/footer.dart';
import 'package:sim/widgets/navbar.dart';
import 'package:sim/widgets/site_table.dart';

class PageLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(padding: EdgeInsets.all(5), child: Center(child: (AuthTable()))),
      bottomNavigationBar: MyFooter(),

    );
  }
}