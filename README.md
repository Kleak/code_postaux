French postal codes API for Dart
------

> Search city name and INSEE code by zip code.

Based on the [official postal codes database](https://www.data.gouv.fr/fr/datasets/base-officielle-des-codes-postaux/) from [La Poste](http://www.laposte.fr/) and fixed by [Christian Quest](https://github.com/cquest).

## Usage dans un navigateur
```dart
import 'package:code_postaux/code_postaux_html.dart';

List<City> cities = await find("31000"); // a list of cities corresponding to zip code 31000
```

## Usage dans la vm
```dart
import 'package:code_postaux/code_postaux_io.dart';

List<City> cities = await find("31000"); // a list of cities corresponding to zip code 31000
```
