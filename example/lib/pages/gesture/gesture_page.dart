
import 'package:app_base/app_base.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GesturePage extends BasePage<GestureController>{
  const GesturePage({super.key});

  static const String path = '/gesturePage';


  @override
  Widget buildPage(BuildContext context) {
     return RawGestureDetector(
       gestures: <Type, GestureRecognizerFactory>{
         TapGestureRecognizer: GestureRecognizerFactoryWithHandlers<TapGestureRecognizer>(
           () => TapGestureRecognizer(),
           (TapGestureRecognizer instance) {instance
               ..onTapDown = (TapDownDetails details) { setState(() { controller._last = 'down'; }); }
               ..onTapUp = (TapUpDetails details) { setState(() { controller._last = 'up'; }); }
               ..onTap = () { setState(() { controller._last = 'tap'; }); }
               ..onTapCancel = () { setState(() { controller._last = 'cancel'; }); };
           },
         ),
       },
       child: Container(width: 300.0, height: 300.0, color: Colors.yellow, child: Text(controller._last)),
     );
  }

  void setState(Function fn){
    fn();
    controller.update();
  }

  @override
  GestureController onInitController() {
    return GestureController();
  }
  
}

class GestureController extends BaseController{
  String _last = '';
  
}