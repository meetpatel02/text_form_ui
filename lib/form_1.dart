// ignore_for_file: avoid_print
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text_form_ui/FormHelper.dart';
import 'package:text_form_ui/details.dart';
import 'package:text_form_ui/form_2.dart';
import 'package:text_form_ui/model/user_data.dart';
import 'package:text_form_ui/routes/routes.dart';

class Form1 extends StatefulWidget {
  const Form1({super.key, name});
  // ignore: non_constant_identifier_names
  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  final _formkey = GlobalKey<FormState>();
  final _dropkey = GlobalKey<FormFieldState>();

  GlobalKey<FormFieldState> _state = new GlobalKey<FormFieldState>();

  TextEditingController _name = new TextEditingController();
  TextEditingController _lastname = new TextEditingController();
  TextEditingController _email = new TextEditingController();

  bool _passwordVisible = false;
  bool _passwordVisible1 = false;

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      var personData = UserData();
      personData.firstName = _name.text;
      personData.lastName = _lastname.text;
      personData.email = _email.text;
      personData.country = currentcountry ?? '';
      personData.state = currentstate ?? '';
      personData.city = currentcity ?? '';
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Form2(
                personData: personData,
              )));
    }
  }

  String? currentcountry;
  String? currentstate;
  String? currentcity;
  String? statemaster;
  late List<String> Country;
  late List<String> State;
  late List<String> City;
  var comfoirmpassword;

  @override
  void initState() {
    _passwordVisible = false;
    _passwordVisible1 = false;
    setState(() {});
    super.initState();
    Country = ['India', 'USA', 'Canada', 'Australia', 'Japan', 'Chin'];
    State = [
      'Gujrat',
      'MP',
      'Shanghai',
      'Melbourne',
      'California',
      'New York',
      'Ontario',
      'Tokyo',
    ];
    City = [
      'Ahmedabad',
      'Surat',
      'Austin',
      'Chicago',
      'Toronto',
      'Vancouver',
      'Beijing'
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: AppBar(
            title: Center(
              child: Text(
                "Form 1",
                style: TextStyle(color: Colors.white),
              ),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
          ),
        ),
        body: DoubleBackToCloseApp(
          snackBar: SnackBar(
            content: Text('Tap back again to exit'),
          ),
          child: SingleChildScrollView(
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
                                textCapitalization:
                                    TextCapitalization.sentences,
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
                                textCapitalization:
                                    TextCapitalization.sentences,
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
                                if (value == null || value.isEmpty) {
                                  return 'Email is required';
                                }
                                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                  return "Please enter a valid email address";
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 15),
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              obscureText: !_passwordVisible,
                              validator: (value) {
                                comfoirmpassword = value;
                                if (value!.isEmpty) {
                                  return "Password cannot be empty";
                                } else if (value.length < 6) {
                                  return "Password length should be atleast 6";
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 15),
                                hintText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                              ),
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
                                } else if (value != comfoirmpassword) {
                                  return "Password must be same";
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: !_passwordVisible1,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 15),
                                hintText: "Confirm Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible1
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible1 = !_passwordVisible1;
                                    });
                                  },
                                ),
                              ),
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
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            DropdownButtonFormField(
                              validator: (value) => value == null
                                  ? 'Please Select Any Country'
                                  : null,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                              hint: Text(
                                "Select Your Country",
                                style: TextStyle(fontSize: 15),
                              ),
                              items: Country.map((items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  print("selected country: $value");
                                  currentcountry = value.toString();
                                });
                              },
                              value: currentcountry,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DropdownButtonFormField(
                              validator: (value) => value == null
                                  ? 'Please Select Any State'
                                  : null,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                              hint: Text(
                                "Select Your State",
                                style: TextStyle(fontSize: 15),
                              ),
                              items: State.map((items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  print("selected State: $value");
                                  currentstate = value.toString();
                                });
                              },
                              value: currentstate,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DropdownButtonFormField(
                              validator: (value) => value == null
                                  ? 'Please Select Any City'
                                  : null,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                              hint: Text(
                                "Select Your City",
                                style: TextStyle(fontSize: 15),
                              ),
                              items: City.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  currentcity = value ?? '';
                                });
                              },
                              value: currentcity,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
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
        ),
      ),
    );
  }
}
