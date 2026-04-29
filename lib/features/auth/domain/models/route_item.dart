// import 'package:duxbe_kds/features/auth/auth.dart';
import 'package:duxbe_kds/features/auth/domain/models/role_pemissions/role_pemissions_model.dart';

class RouteItem {
  RouteItem({
    required this.route,
    required this.label,
    required this.permissions,
    required this.visibility,
    required this.sortOrder,
    this.selectedIcon,
    this.unselectedIcon,
    this.mobileIcon,
    this.subItems = const [],
  });
  final String route;
  final String label;
  final String? selectedIcon;
  final String? unselectedIcon;
  final String? mobileIcon;
  final List<RouteItem> subItems;
  Permissions permissions;
  final bool visibility;
  final int sortOrder;
}
