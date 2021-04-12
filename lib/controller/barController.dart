// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class BarController{
//   Future<Post> fetchPost() async{
//     final response = await http.get('https://data.covid19.go.id/public/api/prov_detail_JAWA_TIMUR.json');
//
//     if (response.statusCode == 200) {
//       var body = json.decode(response.body);
//       var data = body["list_perkembangan"];
//       // If the server returns an OK response, then parse the JSON.
//       return Post.fromJson(data);
//     } else {
//       // If the response was umexpected, throw an error.
//       throw Exception('Failed to load post');
//     }
//     //return http.get('https://data.covid19.go.id/public/api/prov_detail_JAWA_TIMUR.json');
//
//
//   }
// }
//
// class Post {
//   var userId;
//   var id;
//   var title;
//   var body;
//
//   Post({this.userId, this.id, this.title, this.body});
//
//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       userId: json[0],
//       id: json[1],
//       title: json[2]['KASUS'],
//       body: json[3],
//     );
//   }
// }
//
// class MyAppTest extends StatefulWidget {
//   MyAppTest({Key key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyAppTest> {
//   Future<Post> post;
//
//   @override
//   void initState() {
//     super.initState();
//     post = BarController().fetchPost();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'api',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('api'),
//         ),
//         body: Center(
//           child: FutureBuilder<Post>(
//             future: post,
//             builder: (context, abc) {
//               if (abc.hasData) {
//                 return Text(abc.data.title);
//               } else if (abc.hasError) {
//                 return Text("${abc.error}");
//               }
//
//               // By default, it show a loading spinner.
//               return CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }