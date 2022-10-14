import 'package:flutter/material.dart';

void main() {
  runApp(const MyLearnApp());
}

class TaskCard extends StatefulWidget {
  const TaskCard({Key? key}) : super(key: key);

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool _viewDetails = false;

  void _toggleViewDetails() {
    setState(() {
      _viewDetails = !(_viewDetails);
    });
  }

  @override
  Widget build(BuildContext ext) {
    return Material(
        child: Column(children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
              child: Column(children: const <Widget>[
            Text(
              "Task Title",
              textDirection: TextDirection.rtl,
            ),
            Text(
              "Label",
              textDirection: TextDirection.rtl,
            )
          ])),
          Column(children: const <Widget>[
            Text(
              "Start: 11/10/2022 17:11",
              textDirection: TextDirection.rtl,
            ),
            Text(
              "End: 11/10/2022 17:11",
              textDirection: TextDirection.rtl,
            ),
          ]),
          IconButton(
              onPressed: _toggleViewDetails,
              icon: Icon(
                ((_viewDetails)
                    ? (Icons.arrow_drop_down)
                    : (Icons.arrow_drop_up)),
                color: Colors.green,
                size: 24.0,
                semanticLabel: "Press to get detailed task view",
              ))
        ],
      ),
        if (_viewDetails) Column(children: <Widget>[
          Align(child: Text("Description", textDirection: TextDirection.rtl, ), alignment: Alignment.centerLeft,),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.left,
          )
        ])
    ]));
  }
}

class MyLearnApp extends StatelessWidget {
  const MyLearnApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            decoration: const BoxDecoration(color: Colors.black12),
            child: ListView(
              children: [
                TaskCard(),
                TaskCard(),
                TaskCard(),
              ],
            )));
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: Column(children: const <Widget>[
          Text(
            "Task Title",
            textDirection: TextDirection.rtl,
          ),
          Text(
            "Label",
            textDirection: TextDirection.rtl,
          )
        ])),
        Column(children: const <Widget>[
          Text(
            "Start: 11/10/2022 17:11",
            textDirection: TextDirection.rtl,
          ),
          Text(
            "End: 11/10/2022 17:11",
            textDirection: TextDirection.rtl,
          ),
        ]),
        const Icon(
          Icons.arrow_drop_down,
          color: Colors.green,
          size: 24.0,
          semanticLabel: "Press to get detailed task view",
        )
      ],
    );
  }
}

class ListItemWithDetails extends StatelessWidget {
  const ListItemWithDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: <Widget>[
          Expanded(
              child: Column(children: const <Widget>[
            Text(
              "Task Title",
              textDirection: TextDirection.rtl,
            ),
            Text(
              "Label",
              textDirection: TextDirection.rtl,
            )
          ])),
          Column(children: const <Widget>[
            Text(
              "Start: 11/10/2022 17:11",
              textDirection: TextDirection.rtl,
            ),
            Text(
              "End: 11/10/2022 17:11",
              textDirection: TextDirection.rtl,
            ),
          ]),
          const Icon(
            Icons.arrow_drop_up,
            color: Colors.green,
            size: 24.0,
            semanticLabel: "Press to get detailed task view",
          )
        ],
      ),
      Text(
        "Task description details",
        textDirection: TextDirection.rtl,
      )
    ]);
  }
}
