import 'dart:convert';
import 'package:http/http.dart' as http;


class EndPointLink{
  static String link = "https://data.covid19.go.id/public/api/prov_detail_JAWA_TIMUR.json";
}

class LineController{
  static Future getData() async {

    final response = await http.get(EndPointLink.link);
    var body = json.decode(response.body);
    var dataArray = body['list_perkembangan'];
    //var dateTimeJsonObject = dataArray[0];
    //var dateTimeObject = dateTimeJsonObject['tanggal'];
    //var parseToDateTime = DateTime.parse(dateTimeObject);

    //print(parseToDateTime.month.toString());
    //print(dateTimeObject.toString());
    //print(dataArray.toString());
    return dataArray;
  }




}


// class GetApiCovid{
//
//   static Future iniVoid() async{
//     var response = await http.get('https://data.covid19.go.id/public/api/prov_detail_JAWA_TIMUR.json');
//     var body = json.decode(response.body);
//     var data = body['list_perkembangan'];
//   }
// }