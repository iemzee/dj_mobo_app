import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpService {
  static final HttpService instance = HttpService.internal();
  HttpService.internal();
  factoryHttpService() {
    return instance;
  }
  //Simple Get Requests without Header
  Future<http.Response> getRequest(String endPoint) {
    String url = endPoint;
    return http.get(Uri.parse(url));
  }
  
  //Get Requests with Headers e.g Token in Header
  Future<http.Response> getRequestWithHeader(
      {required String endPoint, required Map<String, String> header}) {
    String url = endPoint;
 
    return http.get(Uri.parse(url), headers: header);
  }
  
  //Post Request Without Headers
  Future<http.Response> postRequest(
      {required String endPoint, required Map<dynamic, dynamic> data}) {
    String url = endPoint;
    return http.post(Uri.parse(url), body: data, encoding: Encoding.getByName("utf-8"));
  }

   //Post Request With Specified Headers
  Future<http.Response> postRequestWithHeaderAndBody(
      {required String endPoint,
      required Map<String, String> header,
      required Map<dynamic, dynamic> data}) {
    String url = endPoint;
    return http.post(Uri.parse(url),
        headers: header,
        body: jsonEncode(data),
        encoding: Encoding.getByName("utf-8"));
  }

}
