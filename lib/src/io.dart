import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<Map> getZipCodes() async {
  File zipCode = new File("packages/code_postaux/code_postaux.json");
  return JSON.decode(await zipCode.readAsString());
}
