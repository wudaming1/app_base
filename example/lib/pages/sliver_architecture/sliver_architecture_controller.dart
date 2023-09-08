
import 'package:app_base/app_base.dart';

class SliverArchitectureController extends BaseController{

  double height = 100;

  void updateHeight(){
    height = height + 50;
    update();
  }

}