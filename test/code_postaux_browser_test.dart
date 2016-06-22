// Copyright (c) 2016, Kevin Segaud. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@TestOn("browser")
import 'package:code_postaux/src/html.dart';
import 'package:code_postaux/code_postaux_html.dart';
import 'package:test/test.dart';

main() {
  group('browser', () {
    test('get info', () async {
      Map zipCode = await getZipCodes();
      expect(zipCode, isNotNull);
    });

    test('find browser', () async {
      List<City> city = await find("31000");
      expect(city.first.zipCode, "31000");
      expect(city.first.cityName, "TOULOUSE");
      expect(city.first.inseeCode, "31555");
      expect(city.first.label, "TOULOUSE");
    });
  });
}
