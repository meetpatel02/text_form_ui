// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:text_form_ui/model/user_data.dart';

import 'form_1.dart';


class Details extends StatefulWidget {
  UserData? personData;
  Details( {super.key , this.personData,});

  @override
  State<Details> createState() => _DetailsState();
}
moveToHome(BuildContext context) async{
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Form1(
      )));
}
class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
         leading: IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
          title: const Text(
            "Details",
            style: TextStyle(color: Colors.white),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10 , right: 10,top: 10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                width: MediaQuery.of(context).size.width,
                // height:  MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('First Name: ' + widget.personData!.firstName!,style: TextStyle(fontSize: 16),),
                      Text('Last Name : ' + widget.personData!.lastName!,style: TextStyle(fontSize: 16),),
                      Text('Email: ' + widget.personData!.email!,style: TextStyle(fontSize: 16),),
                      Text('Country : '+ widget.personData!.country!,style: TextStyle(fontSize: 16),),
                        Text('State : '+ widget.personData!.state!,style: TextStyle(fontSize: 16),),
                        Text('City : '+ widget.personData!.city!,style: TextStyle(fontSize: 16),),
                        Text('Gender : '+ widget.personData!.gender!,style: TextStyle(fontSize: 16),),
                        Text('language : '+ widget.personData!.selectedlanguage.toString().replaceAll('[', '').replaceAll(']',''),style: TextStyle(fontSize: 16),),
                        Text('Hobby : ' + widget.personData!.selectedhobby.toString().replaceAll('[', '').replaceAll(']',''),style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ),

                ),
              ),
              Center(
                child: ElevatedButton(
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
              ),

            ],
          ),
        ),

    );

  }
}

