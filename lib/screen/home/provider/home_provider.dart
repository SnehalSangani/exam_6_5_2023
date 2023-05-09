import 'package:exam_6_5_2023/screen/home/model/home_model.dart';
import 'package:flutter/material.dart';

import '../../../utils/api_helper.dart';

class Homeprovider extends ChangeNotifier
{
  List<Trainmodel> trainData = [];
  Future<List<Trainmodel>> postApi(String search)
  async {
    List<Trainmodel> t1 = await Apihelper().trainapi(search);
    return t1;
  }

}