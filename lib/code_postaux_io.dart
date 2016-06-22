// Copyright (c) 2016, Kevin Segaud. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'src/io.dart';
import 'src/city.dart';

export 'src/city.dart';

Map _zipCodeJson;

Future<List<City>> find(String zipCode) async {
  if (_zipCodeJson == null) {
    _zipCodeJson = await getZipCodes();
  }
  List cities = _zipCodeJson[zipCode];
  if (cities.length == 0) {
    return [new City.fromJson(zipCode, _zipCodeJson[zipCode].first)];
  } else {
    return cities
        .map((List infos) => new City.fromJson(zipCode, infos))
        .toList();
  }
}
