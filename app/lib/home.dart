// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/src/widgets/framework.dart';

// class HomePage extends StatelessWidget {
//   HomePage({Key? key}) : super(key: key);
//   String url = "https://jsonplaceholder.typicode.com/users";

//   getUser() async {
//     var respose = await http.get(Uri.parse(url));
//     var data = jsonDecode(respose.body);
//     return data;
    
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: FutureBuilder(
//             future: getUser(),
//             builder: (BuildContext context, AsyncSnapshot snapshot) {
//               if(snapshot.connectionState==ConnectionState.waiting){
//                 return Center(child: CircularProgressIndicator());

//               }
//               else{return ListView.builder(
//                   itemCount: snapshot.data!.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(snapshot.data[index]["name"]),
//                     );
//                   });}
              
//             }));
//   }
// }



