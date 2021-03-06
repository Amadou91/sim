import 'package:flutter/material.dart';
import '../data/users.dart';

class UserTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FutureBuilder<Users>(
        future: fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return new Column(
              children: [
                Container(
                    color: Color(0xFFd3d2d3),
                    child: Table(
                        border: TableBorder.all(color: Colors.black),
                        children: [
                          TableRow(children: [
                            Text("User Name",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text("Phone",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text("Email",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text("Role",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ])
                        ])),
                Container(
                    color: Color(0xFFd3d2d3),
                    child: Table(children: [
                      TableRow(children: [
                        Text("", textAlign: TextAlign.center),
                        Text("", textAlign: TextAlign.center),
                        Text("", textAlign: TextAlign.center),
                        Text("", textAlign: TextAlign.center),
                      ])
                    ])),
                for (var i in snapshot.data.users)
                  Container(
                    color: Color(0xFFd3d2d3),
                    //padding: EdgeInsets.all(20.0),
                    child: Table(
                      border: TableBorder.symmetric(
                          inside: BorderSide.none, outside: BorderSide.none),
                      children: [
                        TableRow(children: [
                          Text(i.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Text(i.phone.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Text(i.email.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Text(i.role.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                        ]),
                        TableRow(children: [
                          Text(""),
                          Text(""),
                          Text(""),
                          Text(""),
                        ]),
                        //TableRow(children: [
                        // Text(i.id.toString()),
                        // Text(i.phone.toString()),
                        // Text(i.dateCreated.toString()),
                        //   ])
                      ],
                    ),
                  )
              ],
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    ]);
  }
}
