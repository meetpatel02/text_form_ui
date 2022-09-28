// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:text_form_ui/details.dart';
import 'package:text_form_ui/routes/routes.dart';

class Form1 extends StatefulWidget {
  const Form1({super.key, required name});
  // ignore: non_constant_identifier_names
  @override
  State<Form1> createState() => _Form1State();
}
class _Form1State extends State<Form1> {


  final _formkey = GlobalKey<FormState>();
  final _dropkey = GlobalKey<FormState>();

TextEditingController _name = new TextEditingController();
  TextEditingController _lastname = new TextEditingController();
TextEditingController _email = new TextEditingController();





  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.form2Route);
      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Details(name : _name.text, email: _email.text, Lastname: _lastname.text, country: '')));
    }
    if (_dropkey.currentState!.validate()) {}
  }



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
                            controller: _name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Firstname cannot be empty";
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 15),
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
                            controller: _lastname,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Lastname cannot be empty";
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 15),
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
                          controller: _email,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email cannot be empty";
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 15),
                              hintText: 'Email',
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
                              hintStyle: TextStyle(fontSize: 15),
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
                              hintStyle: TextStyle(fontSize: 15),
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
                  Column(
                    children: [
                      FormHelper.dropDownWidget(
                        contentPadding: 19,
                        paddingLeft: 10,
                        paddingRight: 10,
                        hintFontSize: 15,
                        paddingTop: 5,
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
                        contentPadding: 19,
                        paddingLeft: 10,
                        paddingRight: 10,
                        hintFontSize: 15,
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
                        contentPadding: 19,
                        paddingLeft: 10,
                        paddingRight: 10,
                        hintFontSize: 15,
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
                ],
              ),
              SizedBox(
                height: 10,
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
                  "Next",
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


