## Flutter Riverpod Strapi
![GitHub stars](https://img.shields.io/github/stars/iniakunhuda/flutter_riverpod_strapi?style=social)
![GitHub forks](https://img.shields.io/github/forks/iniakunhuda/flutter_riverpod_strapi?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/iniakunhuda/flutter_riverpod_strapi?style=social)

[![GitHub license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/radensaleh/flutter_riverpod_strapi/blob/master/LICENSE)
[![platform](https://img.shields.io/badge/platform-Flutter-blue.svg)](https://flutter.dev/)
[![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/radensaleh/flutter_riverpod_strapi)

<br>

## Quick start
This is a normal flutter app. You should follow the instructions in the [official documentation](https://flutter.io/docs/get-started/install).
This project uses **Riverpod** to separate the business logic with UI itself.
And also on this project uses **Clean Architecture** approach to separate each feature ([domains](https://github.com/radensaleh/Quran-App/tree/master/domains/quran), [features](https://github.com/radensaleh/Quran-App/tree/master/features), [resources](https://github.com/radensaleh/Quran-App/tree/master/resources/resources), [shared_libraries](https://github.com/radensaleh/Quran-App/tree/master/shared_libraries) modules).

## Structure 🔥

    ├── lib
    │   ├── core
    │   │   ├── api
    │   │   │   └── endpoints.dart
    │   │   ├── constant
    │   │   │   └── constant.dart
    │   │   ├── database
    │   │   │   └── database.dart
    │   │   ├── helper
    │   │   │   ├── app_exception.dart
    │   │   │   ├── app_router.dart
    │   │   │   └── network_detector.dart
    │   │   └── http
    │   │       ├── api_provider.dart
    │   │       └── api_response.dart
    │   ├── features
    │   │   ├── contact
    │   │   │   ├── data
    │   │   │   │   ├── database
    │   │   │   │   │   └── contact_db.dart
    │   │   │   │   ├── datasource
    │   │   │   │   │   ├── contact_datasource.dart
    │   │   │   │   │   ├── contact_local_datasource.dart
    │   │   │   │   │   └── contact_remote_datasource.dart
    │   │   │   │   ├── dto
    │   │   │   │   │   ├── contact_dto.dart
    │   │   │   │   │   ├── error_dto.dart
    │   │   │   │   ├── model
    │   │   │   │   │   ├── contact_model.dart
    │   │   │   │   └── state
    │   │   │   │       ├── contact_state.dart
    │   │   │   ├── domain
    │   │   │   │   ├── provider
    │   │   │   │   │   └── contact_provider.dart
    │   │   │   │   └── repository
    │   │   │   │       ├── contact_repository_impl.dart
    │   │   │   │       └── contact_repository.dart
    │   │   │   └── presentation
    │   │   │       ├── screen
    │   │   │       │   ├── create_screen.dart
    │   │   │       │   ├── detail_screen.dart
    │   │   │       │   ├── edit_screen.dart
    │   │   │       │   └── list_screen.dart
    │   │   │       └── widget


### Features

- Add, Edit and Remove Contact
- Rest API from Strapi
- Offline database
- Script manager with derry
- Clean Architecture


## Banner Design

<pre>
<img src="https://raw.githubusercontent.com/iniakunhuda/flutter_riverpod_strapi/main/preview/preview_1.png" alt="feed example" width="200">
<img src="https://raw.githubusercontent.com/iniakunhuda/flutter_riverpod_strapi/main/preview/preview_2.png" alt="feed example" width="200">
<img src="https://raw.githubusercontent.com/iniakunhuda/flutter_riverpod_strapi/main/preview/preview_3.png" alt="feed example" width="200">
<img src="https://raw.githubusercontent.com/iniakunhuda/flutter_riverpod_strapi/main/preview/preview_4.png" alt="feed example" width="200">
</pre>


## Built With 🛠

* [Clean Architecture](https://medium.com/ruangguru/an-introduction-to-flutter-clean-architecture-ae00154001b0) - The blueprint for a modular system, which strictly follows the design principle called separation of concerns.
* [Dartz](https://pub.dev/packages/dartz) - Functional Programming in Dart
* [Derry](https://pub.dev/packages/derry) - A script manager to help you define script shortcuts and use them effortlessly
* [Dio](https://github.com/flutterchina/dio/) - A type-safe HTTP client.
* [Freezed](https://pub.dev/packages/freezed) - Code generation for immutable classes
* [Go Router](https://pub.dev/packages/go_router) - Route management Flutter
* [Isar Database](https://isar.dev/) - Local Database
* [Riverpod](https://riverpod.dev/) - State management with upgrade from provider
* [Strapi API](https://strapi.io/) - Handle rest api from Headless CMS
* Handle State - (Loading, No Data, Has Data, Error)

## Author

* **Miftahul Huda**

Don't forget to follow me, fork and give me a ⭐


### How to run app

Install package
```
flutter pub get
```

Run in terminal to generate freezed file
```
derry build
```

Copy .env.example to .env and fill credential from Strapi
```
// assets/.env

API_KEY_STRAPI=xxx
API_BASE_URL=xxx
```


### Strapi Setup

Install <a href="https://github.com/strapi/strapi" target="_blank">Strapi</a> in your local computer

Run project
```
npm start
```

Create collection structure like this

<br/>
<br/>
<img src="https://raw.githubusercontent.com/iniakunhuda/flutter_riverpod_strapi/main/preview/strapi.png" alt="feed example" width="100%">
