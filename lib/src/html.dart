import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/browser_client.dart';

Future<Map> getZipCodes() async {
  BrowserClient client = new BrowserClient();
  Response response =
      await client.get("packages/code_postaux/code_postaux.json");
  return JSON.decode(response.body);
}
