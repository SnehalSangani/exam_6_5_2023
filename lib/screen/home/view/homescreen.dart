import 'package:exam_6_5_2023/screen/home/model/home_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController txtsearch=TextEditingController();
  List<Trainmodel> alldata=[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Rajdhani"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: txtsearch,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter search"),fillColor: Colors.black,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              String search=txtsearch.text;
              Trainmodel t1=Trainmodel(name: ,data: ,trainFrom: ,trainNum: ,trainTo: );
              alldata.add(t1);

            }, child: Text("Submit"),),
          ],
        ),
      ),
    ),
    );
  }
}
