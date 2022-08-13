import "../pages/Form.dart";
import "../pages/Search.dart";
import "../pages/Cart.dart";
import "../pages/user/Login.dart";
import "../pages/user/RegisterFirst.dart";
import "../pages/user/RegisterSecond.dart";
import "../pages/user/RegisterThird.dart";

final routes = {
  '/cart': (context) => CartPage(),
  '/form': (context) => FormPage(),
  '/search': (context) => SearchPage(),
  '/login': (context) => LoginPage(),
  '/register1': (context) => RegisterFirstPage(),
  '/register2': (context) => RegisterSecondPage(),
  '/register3': (context) => RegisterThirdPage(),
};
