
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:taskkk/model/Products.dart';
import 'package:taskkk/model/RespMain.dart';
class Apiservice {
  Future<List<Products>?> fetchdata() async {
    var response=await http.get(Uri.parse("https://dummyjson.com/products"));
    var jsondata=jsonDecode(response.body.toString());
    var res=RespMain.fromJson(jsondata);
    var list=res.products;
    return list;
  }
}