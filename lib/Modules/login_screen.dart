import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_screen/Shared/components/components.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          actionButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/72874-user-profile-v2.json',width:Get.width*0.4,height:Get.height*0.4),
                Text(
                  'Welcome'.tr,
                  style: Get.textTheme.headline4.copyWith(
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormFeild(
                  controller:emailController,
                  type: TextInputType.emailAddress,
                  validate: (String value)
                  {
                    if (value.isEmpty){
                      return 'you must add your email'.tr;
                    }
                    return null;
                  },
                  label: 'E-mail'.tr,
                  prefix:Icons.person,
                ),
                SizedBox(
                  height: 20,
                ),
                defaultFormFeild(
                  controller:passwordController,
                  type: TextInputType.visiblePassword,
                  validate: (String value)
                  {
                    if (value.isEmpty){
                      return 'password is too short'.tr;
                    }
                    return null;
                  },
                  label: 'Password'.tr,
                  prefix:Icons.lock,
                  suffix: Icons.remove_red_eye_outlined,
                  isPassword: true,
                ),
                SizedBox(
                  height: 15,
                ),
                GetBuilder<LoginController>(
                  builder: (controller) {
                    return CheckboxListTile(
                      value: controller.isRememberMe,
                      onChanged: (value)
                      {
                        controller.changeIsRememberMe(value);
                      },
                      title: Text(
                        'Remember me'.tr,
                      ),
                    );
                  }
                ),
                SizedBox(
                  height: 25,
                ),
                defaultButton(
                    function: ()
                    {
                      if(formKey.currentState.validate()){
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                    text: 'Login'.tr,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

class LoginController extends GetxController{
  bool isRememberMe = false;

  changeIsRememberMe(bool value)
  {
    isRememberMe= value;
    update();
  }
}