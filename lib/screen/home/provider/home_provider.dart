import 'package:flutter/material.dart';

import '../../../utils/api_helper.dart';

class Homeprovider extends ChangeNotifier
{
  Future<String> postapicall(serach)
  async {
    Apihelper apihelper=Apihelper();
    String data=await apihelper.create(serach);
    notifyListeners();
    return data;
  }
}