import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_screen/Shared/components/components.dart';
import 'package:lottie/lottie.dart';

class RegisterScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();

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
                  'Register Now!'.tr,
                  style: Get.textTheme.headline4.copyWith(
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormFeild(
                  controller:nameController,
                  type: TextInputType.name,
                  validate: (String value)
                  {
                    if (value.isEmpty){
                      return 'you must add your name'.tr;
                    }
                    return null;
                  },
                  label: 'Name'.tr,
                  prefix:Icons.account_circle_outlined,
                ),
                SizedBox(
                  height: 20,
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
                  height: 20,
                ),
                defaultFormFeild(
                  controller:phoneController,
                  type: TextInputType.number,
                  validate: (String value)
                  {
                    if (value.isEmpty){
                      return 'you must add your phone'.tr;
                    }
                    return null;
                  },
                  label: 'Phone'.tr,
                  prefix:Icons.call,
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
                      print(nameController.text);
                      print(phoneController.text);
                    }
                  },
                  text: 'Register'.tr,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
