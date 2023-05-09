import 'package:exam_6_5_2023/screen/home/model/home_model.dart';
import 'package:exam_6_5_2023/utils/api_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController txtsearch=TextEditingController();
  List<Trainmodel> alldata=[];
  Homeprovider? homeproviderTrue;
  Homeprovider? homeproviderFalse;

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<Homeprovider>(context,listen: false).postApi('Rajdhani');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    homeproviderTrue = Provider.of(context,listen: true);
    homeproviderFalse = Provider.of(context,listen: false);


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
            ElevatedButton(onPressed: () async {
              print("===============================================");
              print(homeproviderTrue!.trainData[0].name);
              String search=txtsearch.text;
              homeproviderTrue!.trainData = await homeproviderFalse!.postApi(search);
            }, child: Text("Submit"),),
            // Text('${homeproviderTrue!.trainData[0].name}'),
          ],
        ),
      ),
    ),
    );
  }
}
