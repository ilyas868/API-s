 import 'dart:convert';
import 'package:app/model.dart';
import 'package:http/http.dart' as http;
String url = "https://jsonplaceholder.typicode.com/users";

  getUser() async {
    List userList = [];
    var respose = await http.get(Uri.parse(url));
    var data = jsonDecode(respose.body);
    for (var i in data){
      userList.add(ClassModel.fromJson(i));
    }
    return userList;
    
  }