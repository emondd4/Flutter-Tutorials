import 'package:navigate_by_name/HomeView.dart';
import 'package:navigate_by_name/SecondView.dart';
import 'package:navigate_by_name/ThirdView.dart';

class Routes{
  static const String homePage = "/homePage";
  static const String secondPage = "/secondPage";
  static const String thirdPage = "/thirdPage";

  static var list = {
    Routes.homePage:(context) => const HomePage(),
    Routes.secondPage:(context) => const SecondPage(),
    Routes.thirdPage:(context) => const ThirdPage(),
  };

}