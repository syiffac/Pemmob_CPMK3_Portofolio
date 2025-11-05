import 'package:get/get.dart';
import '../modules/home.dart';
import '../modules/about.dart';
import '../modules/contact.dart';
import '../modules/pendidikan.dart';
import '../modules/keahlian.dart';
import '../modules/pengalaman.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomeView()),
    GetPage(name: Routes.ABOUT, page: () => AboutView()),
    GetPage(name: Routes.CONTACT, page: () => ContactView()),
    GetPage(name: Routes.PENDIDIKAN, page: () => PendidikanView()),
    GetPage(name: Routes.KEAHLIAN, page: () => KeahlianView()),
    GetPage(name: Routes.PENGALAMAN, page: () => PengalamanView()),
  ];
}

abstract class Routes {
  Routes._();
  static const HOME = '/home';
  static const ABOUT = '/about';
  static const CONTACT = '/contact';
  static const PENDIDIKAN = '/pendidikan';
  static const KEAHLIAN = '/keahlian';
  static const PENGALAMAN = '/pengalaman';
}
