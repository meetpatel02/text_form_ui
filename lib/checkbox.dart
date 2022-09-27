import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool erased = false;
  List availableHobbies = [
    {"id": 1, "name": "Cricket", "isDone": false},
    {"id": 2, "name": "Football", "isDone": false},
    {
      "id": 3,
      "name": "Volleyball",
      "isDone": false,
    },
    {"id": 4, "name": "Music", "isDone": false},
  ];

  @override
  void initState() {
    super.initState();
    // avaliableHobby.clear();
    // avaliableHobby.add(Hobby(id: 0, isDone: false, title: 'Cricket'));
    // avaliableHobby.add(Hobby(id: 1, isDone: false, title: 'Football'));
    // avaliableHobby.add(Hobby(id: 2, isDone: false, title: 'Dance'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
                children: availableHobbies.map((hobby) {
              return CheckboxListTile(
                  activeColor: Colors.indigo,
                  value: hobby["isDone"],
                  title: Text(hobby["name"]),
                  onChanged: (newValue) {
                    setState(() {
                      hobby["isDone"] = newValue;
                    });
                  });
            }).toList()),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Wrap(
              children: availableHobbies.map((hobby) {
                if (hobby["isDone"] == true) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Chip(
                        onDeleted: () {
                          setState(() {
                            for (int i = 0; i < availableHobbies.length; i++) {
                              if (availableHobbies[i]["name"] == hobby['name']) {
                                availableHobbies[i]["isDone"] = false;
                                break;
                              }
                            }
                          });
                        },
                        label: Text(hobby["name"])),
                  );
                }
                return Container();
              }).toList(),
            )
          ]),
        ),
      ),
    );
  }
}
