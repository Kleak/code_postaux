// Copyright (c) 2016, Kevin Segaud. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

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
