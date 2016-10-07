import 'dart:async';
import 'dart:convert';
import 'package:angular2/core.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

@Injectable()
class HelloService {
  static const _heroesUrl = 'test.json'; // URL to web API
  final BrowserClient _http;

  HelloService(this._http);

  Future getHeroes() async {
    print("test");
    try {
      final response = await _http.get(_heroesUrl);
      print(response);
      print(response.body);
//      final heroes = _extractData(response)
//          .map((value) => new Hero.fromJson(value))
//          .toList();
//      return heroes;
    } catch (e) {
      print(e);
      throw _handleError(e);
    }
    print("end");
  }

  dynamic _extractData(Response res) {
    var body = JSON.decode(res.body);
    return body['data'];
  }

  Exception _handleError(dynamic e) {
    // In a real world app, we might use a remote logging infrastructure
    // We'd also dig deeper into the error to get a better message
    print(e); // log to console instead
    return new Exception('Server error; cause: $e');
  }
}