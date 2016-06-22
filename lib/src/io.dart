// Copyright (c) 2016, Kevin Segaud. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<Map> getZipCodes() async {
  File zipCode = new File("packages/code_postaux/code_postaux.json");
  return JSON.decode(await zipCode.readAsString());
}
