// Copyright (c) 2016, Kevin Segaud. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@TestOn("vm")
import 'package:code_postaux/code_postaux_io.dart';
import 'package:test/test.dart';

main() {
  group('vm', () {
    test('find io', () async {
      List<City> city = await find("31000");
      expect(city.first.zipCode, "31000");
      expect(city.first.cityName, "TOULOUSE");
      expect(city.first.inseeCode, "31555");
      expect(city.first.label, "TOULOUSE");
    });
  });
}
