import 'package:app_base/app_base.dart';

class HomeController extends BaseController{

  int currentPageIndex = 0;

  void onDestinationSelected(int index){
    currentPageIndex = index;
    update();
  }

}