

import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class NetworkHandler {
  static final client = http.Client();
  static const storage = FlutterSecureStorage();
  static Future<String> post(var body, String endpoint) async {
    var response = await client.post(buildUrl(endpoint), body: body,headers: {
      "Content-type":"application/json",
    });
    return response.body;
  }
  
  static Future<dynamic> get(String endpoint, String? token) async{
    var response = await client.get(buildUrl(endpoint),
    headers:{"Content-type":"application/json","authorization":"Bearer $token"
     });
     return response.body;
  }


  static Uri buildUrl(String endpoint) {
    String host = "http://10.0.2.2:3001/";
    final apiPath = host + endpoint;
    return Uri.parse(apiPath);
  }

  static Future<void> storeToken(String token)async{
    await storage.write(key: "token", value: token);
  }

  static Future<String?> getToken()async{
   return await storage.read(key: "token");
  }

}

























