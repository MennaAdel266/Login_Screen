import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_screen/Modules/login_screen.dart';
import 'package:login_screen/Modules/register_screen.dart';
import 'package:login_screen/Shared/components/components.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
         actionButton(),
        ],
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: ()
            {
             Get.to(LoginScreen(),transition: Transition.leftToRightWithFade);
            },
            child:Text(
              'push to login screen'.tr,
            ) ,
          ),
          TextButton(
            onPressed: ()
            {
              Get.to(RegisterScreen(), transition: Transition.leftToRightWithFade);
            },
            child:Text(
                'push to Register screen'.tr,
            ) ,
          ),
        ],
      ),
    );
  }
}
