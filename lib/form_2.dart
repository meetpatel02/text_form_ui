// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:text_form_ui/model/user_data.dart';

import 'details.dart';

class Form2 extends StatefulWidget {
  Form2({
    Key? key,
    this.personData,
  }) : super(key: key);

  UserData? personData;
  @override
  State<Form2> createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  final formKey = GlobalKey<FormState>();
  String selectval = "";
  int _radioSelected = 0;
  String? gender = '';
  String? selectedSalutation;
  String? selectedSalutationed;
  String? selectedSalutat;
  List<String> lan = [];
  final textFieldController = TextEditingController();
  bool? isGujarati = false;
  bool? isHindi = false;
  bool? isEnglish = false;
  bool? isTamil = false;

  List<String> selectedHobbies = [];
  List<String> selectedLanguage = [];

  moveToHome(BuildContext context) async {
    if (gender!.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'please select gender',
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    } else if (selectedLanguage.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'please select language',
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    } else if (selectedHobbies.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'please select hobby',
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    } else {
      widget.personData!.gender = gender;
      widget.personData!.selectedlanguage = selectedLanguage;
      widget.personData!.selectedhobby = selectedHobbies;
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Details(personData: widget.personData!)));
    }
  }

  var Language1;
  List language = [
    {"id": 1, "name": "Gujrati", "isDone": false},
    {"id": 2, "name": "Hindi", "isDone": false},
    {"id": 3, "name": "English", "isDone": false},
    {"id": 4, "name": "Tamil", "isDone": false},
  ];
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
  }

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
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          title: Center(
            child: Text(
              "Form 2",
              style: TextStyle(color: Colors.white),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    "Gender :",
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
                    "Language :",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
                children: language.map((Language) {
              return CheckboxListTile(
                  activeColor: Colors.indigo,
                  value: Language["isDone"],
                  title: Text(Language["name"]),
                  onChanged: (newValue) {
                    setState(() {
                      Language["isDone"] = newValue;
                      if (newValue ?? false) {
                        selectedLanguage.add(Language["name"].toString());
                      } else {
                        selectedLanguage.remove(Language["name"].toString());
                      }
                    });
                  });
            }).toList()),
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
                    child: Container(
                      width: 50,
                      height: 50,
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
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: Colors.black,
                        child: const Icon(Icons.add),
                      ),
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

                          if (newValue ?? false) {
                            selectedHobbies.add(hobby["name"].toString());
                          } else {
                            selectedHobbies.remove(hobby["name"].toString());
                          }
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
                                for (int i = 0;
                                    i < availableHobbies.length;
                                    i++) {
                                  if (availableHobbies[i]["name"] ==
                                      hobby['name']) {
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
          ]),
        ));
  }
}
