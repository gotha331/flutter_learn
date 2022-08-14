import "../pages/Form.dart";
import "../pages/Search.dart";
import "../pages/Cart.dart";
import "../pages/user/Login.dart";
import "../pages/user/RegisterFirst.dart";
import "../pages/user/RegisterSecond.dart";
import "../pages/user/RegisterThird.dart";
import "../pages/user/User.dart";
import "../pages/AppBarDemo.dart";
import "../pages/TabBarController.dart";
import "../pages/Button.dart";
import "../pages/FormTest.dart";
import "../pages/FormDemo.dart";
import "../pages/DatePicker.dart";
import "../pages/DateTimePicker.dart";
import "../pages/Swiper.dart";

final routes = {
  '/cart': (context) => CartPage(),
  '/form': (context) => FormPage(),
  '/search': (context) => SearchPage(),
  '/login': (context) => LoginPage(),
  '/register1': (context) => RegisterFirstPage(),
  '/register2': (context) => RegisterSecondPage(),
  '/register3': (context) => RegisterThirdPage(),
  '/user': (context) => UserPage(),
  '/appBarDemo': (context) => AppBarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/buttonDemo': (context) => ButtonDemoPage(),
  '/formTest': (context) => FormTestPage(),
  '/formDemo': (context) => FormDemoPage(),
  '/datePicker': (context) => DatePickerDemo(),
  '/dateTimePicker': (context) => DateTimePickerPage(),
  '/swiperDemo': (context) => SwiperDemoPage(),
};
