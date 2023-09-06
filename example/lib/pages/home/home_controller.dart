import 'package:app_base/app_base.dart';
import 'package:flutter/cupertino.dart';

class HomeController extends BaseController{

  int currentPageIndex = 0;
  final pageController = PageController();

  @override
  void onInit() {
    super.onInit();
  }

  void onDestinationSelected(int index){
    currentPageIndex = index;
    pageController.jumpToPage(index);
    update();
  }
  void onPageChanged(int index){
    currentPageIndex = index;
    update();
  }

}