import 'dart:convert';
import 'dart:math';
import 'package:exam_6_5_2023/screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class Apihelper
{

  Future<List<Trainmodel>> trainapi(String serach)
  async {
    String link="https://trains.p.rapidapi.com/";
    Uri uri=Uri.parse(link);
    var json =jsonEncode({ "search": serach});
    var result=await http.post(uri,headers: {"content-type":'application/json','X-RapidAPI-Key': 'b7a617da36msh8b9fc8e9d3922d3p14081bjsn7af9d29b2e02',
      'X-RapidAPI-Host': 'trains.p.rapidapi.com'},body: json);
    var response = jsonDecode(result.body);
    List<Trainmodel> trainData  = response.map((e)=>Trainmodel.fromJson(e)).toList();

    print(response);
    return trainData;
  }

}