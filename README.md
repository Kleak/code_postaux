French postal codes API for Dart
------

> Recherche de nom de commune et code INSEE à partir d'un code postal.

Based on the [official postal codes database](https://www.data.gouv.fr/fr/datasets/base-officielle-des-codes-postaux/) from [La Poste](http://www.laposte.fr/) and fixed by [Christian Quest](https://github.com/cquest).

## Usage dans un navigateur
```dart
import 'package:code_postaux/code_postaux_html.dart';

List<City> cities = await find("31000"); // la liste des villes ayant pour code postal 31000
```

## Usage dans la vm
```dart
import 'package:code_postaux/code_postaux_io.dart';

List<City> cities = await find("31000"); // la liste des villes ayant pour code postal 31000
```
