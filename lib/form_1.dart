// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:text_form_ui/routes/routes.dart';

class Form1 extends StatefulWidget {
  const Form1({super.key, required name});
  // ignore: non_constant_identifier_names
  @override
  State<Form1> createState() => _Form1State();
}
class _Form1State extends State<Form1> {
  String selectval = "";
  int _radioSelected = 0;
  String? gender;
  bool _gujrati = false;
  bool _english = false;
  bool _hindi = false;
  bool _tamil = false;

  final _formkey = GlobalKey<FormState>();
  final _dropkey = GlobalKey<FormState>();
  final textFieldController = TextEditingController();

  List availableHobbies = [
    {"id": 1, "name": "Cricket", "isDone": false},
    {"id": 2, "name": "Football", "isDone": false},
    {"id": 3,
      "name": "Volleyball",
      "isDone": false,
    },
    {"id": 4, "name": "Music", "isDone": false},
  ];

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
    if (_dropkey.currentState!.validate()) {}
  }

  String? selectedSalutation;
  String? selectedSalutationed;
  String? selectedSalutat;

  List countries = [];
  List statesMaster = [];
  List cityMaster = [];
  List states = [];
  List cities = [];
  String? countryId;
  String? stateId;
  String? cityId;

  @override
  void initState() {
    setState(() {});
    super.initState();
    countries.add({"id": 1, "name": "India"});
    countries.add({"id": 2, "name": "USA"});
    countries.add({"id": 3, "name": "Canada"});
    countries.add({"id": 4, "name": "Australia"});
    countries.add({"id": 5, "name": "Japan"});
    countries.add({"id": 6, "name": "Chin"});

    statesMaster = [
      {"ID": 1, "Name": "Gujarat", "ParentId": 1},
      {"ID": 2, "Name": "MP", "ParentId": 1},
      {"ID": 3, "Name": "Shanghai", "ParentId": 1},
      {"ID": 4, "Name": "Melbourne", "ParentId": 1},
      {"ID": 5, "Name": "California", "ParentId": 1},
      {"ID": 6, "Name": "Ontario", "ParentId": 1},
      {"ID": 7, "Name": "Tokyo", "ParentId": 1},
      {"ID": 1, "Name": "Gujarat", "ParentId": 2},
      {"ID": 2, "Name": "MP", "ParentId": 2},
      {"ID": 3, "Name": "Shanghai", "ParentId": 2},
      {"ID": 4, "Name": "Melbourne", "ParentId": 2},
      {"ID": 5, "Name": "California", "ParentId": 2},
      {"ID": 6, "Name": "Ontario", "ParentId": 2},
      {"ID": 7, "Name": "Tokyo", "ParentId": 2},
      {"ID": 1, "Name": "Gujarat", "ParentId": 3},
      {"ID": 2, "Name": "MP", "ParentId": 3},
      {"ID": 3, "Name": "Shanghai", "ParentId": 3},
      {"ID": 4, "Name": "Melbourne", "ParentId": 3},
      {"ID": 5, "Name": "California", "ParentId": 3},
      {"ID": 6, "Name": "Ontario", "ParentId": 3},
      {"ID": 7, "Name": "Tokyo", "ParentId": 3},
      {"ID": 1, "Name": "Gujarat", "ParentId": 4},
      {"ID": 2, "Name": "MP", "ParentId": 4},
      {"ID": 3, "Name": "Shanghai", "ParentId": 4},
      {"ID": 4, "Name": "Melbourne", "ParentId": 4},
      {"ID": 5, "Name": "California", "ParentId": 4},
      {"ID": 6, "Name": "Ontario", "ParentId": 4},
      {"ID": 7, "Name": "Tokyo", "ParentId": 4},
      {"ID": 1, "Name": "Gujarat", "ParentId": 5},
      {"ID": 2, "Name": "MP", "ParentId": 5},
      {"ID": 3, "Name": "Shanghai", "ParentId": 5},
      {"ID": 4, "Name": "Melbourne", "ParentId": 5},
      {"ID": 5, "Name": "California", "ParentId": 5},
      {"ID": 6, "Name": "Ontario", "ParentId": 5},
      {"ID": 7, "Name": "Tokyo", "ParentId": 5},
      {"ID": 1, "Name": "Gujarat", "ParentId": 6},
      {"ID": 2, "Name": "MP", "ParentId": 6},
      {"ID": 3, "Name": "Shanghai", "ParentId": 6},
      {"ID": 4, "Name": "Melbourne", "ParentId": 6},
      {"ID": 5, "Name": "California", "ParentId": 6},
      {"ID": 6, "Name": "Ontario", "ParentId": 6},
      {"ID": 7, "Name": "Tokyo", "ParentId": 6},
    ];
    cityMaster = [
      {"ID": 1, "Name": "Ahmedabad", "ParentId": 1},
      {"ID": 2, "Name": "Surat", "ParentId": 1},
      {"ID": 3, "Name": "Austin", "ParentId": 1},
      {"ID": 4, "Name": "Chicago", "ParentId": 1},
      {"ID": 5, "Name": "Toronto", "ParentId": 1},
      {"ID": 6, "Name": "Beijing", "ParentId": 1},
      {"ID": 7, "Name": "Vancouver", "ParentId": 1},
      {"ID": 1, "Name": "Ahmedabad", "ParentId": 2},
      {"ID": 2, "Name": "Surat", "ParentId": 2},
      {"ID": 3, "Name": "Austin", "ParentId": 2},
      {"ID": 4, "Name": "Chicago", "ParentId": 2},
      {"ID": 5, "Name": "Toronto", "ParentId": 2},
      {"ID": 6, "Name": "Beijing", "ParentId": 2},
      {"ID": 7, "Name": "Vancouver", "ParentId": 2},
      {"ID": 1, "Name": "Ahmedabad", "ParentId": 3},
      {"ID": 2, "Name": "Surat", "ParentId": 3},
      {"ID": 3, "Name": "Austin", "ParentId": 3},
      {"ID": 4, "Name": "Chicago", "ParentId": 3},
      {"ID": 5, "Name": "Toronto", "ParentId": 3},
      {"ID": 6, "Name": "Beijing", "ParentId": 3},
      {"ID": 7, "Name": "Vancouver", "ParentId": 3},
      {"ID": 1, "Name": "Ahmedabad", "ParentId": 4},
      {"ID": 2, "Name": "Surat", "ParentId": 4},
      {"ID": 3, "Name": "Austin", "ParentId": 4},
      {"ID": 4, "Name": "Chicago", "ParentId": 4},
      {"ID": 5, "Name": "Toronto", "ParentId": 4},
      {"ID": 6, "Name": "Beijing", "ParentId": 4},
      {"ID": 7, "Name": "Vancouver", "ParentId": 4},
      {"ID": 1, "Name": "Ahmedabad", "ParentId": 5},
      {"ID": 2, "Name": "Surat", "ParentId": 5},
      {"ID": 3, "Name": "Austin", "ParentId": 5},
      {"ID": 4, "Name": "Chicago", "ParentId": 5},
      {"ID": 5, "Name": "Toronto", "ParentId": 5},
      {"ID": 6, "Name": "Beijing", "ParentId": 5},
      {"ID": 7, "Name": "Vancouver", "ParentId": 5},
      {"ID": 1, "Name": "Ahmedabad", "ParentId": 6},
      {"ID": 2, "Name": "Surat", "ParentId": 6},
      {"ID": 3, "Name": "Austin", "ParentId": 6},
      {"ID": 4, "Name": "Chicago", "ParentId": 6},
      {"ID": 5, "Name": "Toronto", "ParentId": 6},
      {"ID": 6, "Name": "Beijing", "ParentId": 6},
      {"ID": 7, "Name": "Vancouver", "ParentId": 6},
    ];
    // avaliableHobby.clear();
    // avaliableHobby.add(Hobby(id: 0, isDone: false, title: 'Cricket'));
    // avaliableHobby.add(Hobby(id: 1, isDone: false, title: 'Football'));
    // avaliableHobby.add(Hobby(id: 2, isDone: false, title: 'Dance'));
  }

  void addhobby (String hobby) {
    setState(() {
      availableHobbies.add({"id": DateTime
          .now()
          .microsecondsSinceEpoch, "isDone": false, "name": hobby});
    });
      textFieldController.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30.0),
        child: AppBar(
          title: const Text(
            "Form 1",
            style: TextStyle(color: Colors.white),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Firstname cannot be empty";
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                hintText: "First Name",
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0))),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Lastname cannot be empty";
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                hintText: "Last Name",
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email cannot be empty";
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 6) {
                              return "Password length should be atleast 6";
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 6) {
                              return "Password length should be atleast 6";
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Confirm Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                          child: Divider(
                            thickness: 2,
                            indent: 30,
                            endIndent: 10,
                          )),
                      Text(
                        "Region",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                          child: Divider(
                            thickness: 2,
                            indent: 10,
                            endIndent: 30,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Column(
                      children: [
                        FormHelper.dropDownWidget(
                          context,
                          "Selected Country",
                          countryId,
                          countries,
                              (onChangedval) {
                            countryId = onChangedval;
                            print("selected country: $onChangedval");
                            states = statesMaster
                                .where((stateItem) =>
                            stateItem["ParentId"].toString() ==
                                onChangedval.toString())
                                .toList();
                            stateId = null;
                            cityId = null;
                            setState(() {});
                          },
                              (onValidateval) {
                            if (onValidateval == null) {
                              return "please select Country";
                            }
                            return null;
                          },
                          borderColor: Colors.grey,
                          borderFocusColor: Theme
                              .of(context)
                              .primaryColor,
                          borderRadius: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FormHelper.dropDownWidget(
                          context,
                          "Selected state",
                          stateId,
                          states,
                              (onChangedval) {
                            stateId = onChangedval;
                            print("Selected state: $onChangedval");
                            cities = cityMaster
                                .where((cityItem) =>
                            cityItem["ParentId"].toString() ==
                                onChangedval.toString())
                                .toList();
                            cityId = null;
                            setState(() {});
                          },
                              (onValidate) {
                            if (onValidate == null) {
                              return "please select State";
                            }
                            return null;
                          },
                          borderColor: Colors.grey,
                          borderFocusColor: Theme
                              .of(context)
                              .primaryColor,
                          borderRadius: 10,
                          optionValue: "ID",
                          optionLabel: "Name",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FormHelper.dropDownWidget(
                          context,
                          "Selected cities",
                          cityId,
                          cities,
                              (onChangedval) {
                            cityId = onChangedval;
                            print("Selected cities: $onChangedval");
                            setState(() {});
                          },
                              (onValidate) {
                            if (onValidate == null) {
                              return "please select City";
                            }
                            return null;
                          },
                          borderColor: Colors.grey,
                          borderFocusColor: Theme
                              .of(context)
                              .primaryColor,
                          borderRadius: 10,
                          optionValue: "ID",
                          optionLabel: "Name",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Gender",
                      style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
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
                      style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                      style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: FloatingActionButton(
                        autofocus: true,
                        onPressed: () {
                          showDialog(context: context, builder: (context) =>
                              AlertDialog(
                                title: Text('Add Hobby'),
                                content: TextField(
                                  controller: textFieldController,
                                  decoration: InputDecoration(
                                      hintText: 'Enter your hobby name'),
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                    Navigator.of(context).pop();
                                    addhobby(textFieldController.text);
                                  }, child: Text('Submit'))
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
                      return  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Chip(
                            onDeleted: () {
                              setState(() {
                                for (int i = 0 ; i < availableHobbies.length ; i++){
                                  if(availableHobbies[i]["name"] == hobby['name']){
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
            ],
          ),
        ),
      ),
    );
  }

}


