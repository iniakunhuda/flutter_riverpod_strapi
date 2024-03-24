class AppRouteType {
  String name;
  String path;

  AppRouteType({
    required this.name,
    required this.path,
  });
}

class AppRouter {
  static AppRouteType home = AppRouteType(name: 'home', path: '/');
  static AppRouteType create = AppRouteType(name: 'create', path: '/create');
  static AppRouteType detail =
      AppRouteType(name: 'detail', path: '/detail/:id');
  static AppRouteType edit = AppRouteType(name: 'edit', path: '/edit/:id');
}
