import 'dart:convert';
import 'package:http/http.dart' as http;

class Apihelper
{

  Future<String> trainapi(String rajdhani,String serach)
  async {
    String link="https://trains.p.rapidapi.com/";
    Uri uri=Uri.parse(link);
    var json =jsonEncode({"serach:rajdhani"});
    var result=await http.post(uri,body: json);
    if(result==200)
      {
        print("success");
      }
    return "failed";
  }

}