import 'package:flutter/material.dart';
import 'package:text_form_ui/routes/routes.dart';

class Form2 extends StatefulWidget {
  const Form2({Key? key, required name}) : super(key: key);

  @override
  State<Form2> createState() => _Form2State();
}

String selectval = "";
int _radioSelected = 0;
String? gender;
bool _gujrati = false;
bool _english = false;
bool _hindi = false;
bool _tamil = false;
String? selectedSalutation;
String? selectedSalutationed;
String? selectedSalutat;
final textFieldController = TextEditingController();


moveToHome(BuildContext context) async{
  Navigator.pushNamed(context, MyRoutes.detailsRoute);
}


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
void initState() {}

class _Form2State extends State<Form2> {
  void addhobby(String hobby) {
    setState(() {
      availableHobbies.add({
        "id": DateTime.now().microsecondsSinceEpoch,
        "isDone": false,
        "name": hobby
      });
    });
    textFieldController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Form 2",
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Text(
                    "Gender",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 100,
              child: Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: _radioSelected,
                      onChanged: (value) {
                        setState(() {
                          _radioSelected = value as int;
                          gender = 'Male';
                        });
                      }),
                  const Text(
                    'Male',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 115,
              child: Row(
                children: [
                  Radio(
                      value: 2,
                      groupValue: _radioSelected,
                      onChanged: (value) {
                        setState(() {
                          _radioSelected = value as int;
                          gender = 'Female';
                        });
                      }),
                  const Text(
                    'Female',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 145,
              child: Row(
                children: [
                  Radio(
                      value: 3,
                      groupValue: _radioSelected,
                      onChanged: (value) {
                        setState(() {
                          _radioSelected = value as int;
                          gender = 'others';
                        });
                      }),
                  const Text(
                    'Others',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Language",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.black,
                      value: _gujrati,
                      onChanged: (value) {
                        setState(() {
                          _gujrati = value!;
                        });
                      },
                    ),
                    const Expanded(
                      child: Text(
                        'Gujarati',
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.black,
                        value: _english,
                        onChanged: (value) {
                          setState(() {
                            _english = value!;
                          });
                        },
                      ),
                      const Expanded(
                        child: Text(
                          'English',
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.black,
                          value: _hindi,
                          onChanged: (value) {
                            setState(() {
                              _hindi = value!;
                            });
                          },
                        ),
                        const Expanded(
                          child: Text(
                            'Hindi',
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.black,
                            value: _tamil,
                            onChanged: (value) {
                              setState(() {
                                _tamil = value!;
                              });
                            },
                          ),
                          const Expanded(
                            child: Text(
                              'Tamil',
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Hobbies :",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: FloatingActionButton(
                  autofocus: true,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text('Add Hobby'),
                              content: TextField(
                                controller: textFieldController,
                                decoration: InputDecoration(
                                    hintText: 'Enter your hobby name'),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      addhobby(textFieldController.text);
                                    },
                                    child: Text('Submit'))
                              ],
                            ));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.add),
                ),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            ),
          ],
        ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => moveToHome(context),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 100)),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.yellow, fontSize: 18),
              ),
            ),
    ]
    ),
      )
    );
  }
}
