import 'package:flutter/material.dart';
import 'package:genkid/config/utility/app_colores.dart';
import 'package:genkid/config/utility/app_strings.dart';
import 'package:genkid/config/utility/routes.dart';
import 'package:sizer/sizer.dart';
import '../widgets/input_field.dart';
import '../widgets/main_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var usernameController = TextEditingController();

  var emailController = TextEditingController();

  var phoneNumberController = TextEditingController();

  var ageController = TextEditingController();

  var passwordController = TextEditingController();

  var scaffoldKey = GlobalKey<ScaffoldState>();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE4ECFB),
      body: Center(
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                margin:const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2.h,),
                    Text(AppStrings.createAccount,style: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w800)),
                    SizedBox(height: 2.h,),
                    const Text("hello let’s start to create our account",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),),
                    SizedBox(height: 4.h,),
                    InputField(validated: (){}, onchange: (){}, onEditingComplete: (){},
                      controller:emailController ,
                      prefixIcon: Icons.email,
                      hint: AppStrings.email,


                    ),
                    SizedBox(height: 2.h,),
                    InputField(validated: (){}, onchange: (){}, onEditingComplete: (){},
                      controller:passwordController ,
                      prefixIcon: Icons.lock,
                      hint: AppStrings.password,


                    ),
                    SizedBox(height: 2.h,),
                    InputField(validated: (){}, onchange: (){}, onEditingComplete: (){},
                      controller:ageController ,
                      prefixIcon: Icons.calendar_today,
                      hint: AppStrings.age,


                    ),
                    SizedBox(height: 2.h,),
                    InputField(validated: (){}, onchange: (){}, onEditingComplete: (){},
                      controller:phoneNumberController ,
                      prefixIcon: Icons.phone,
                      hint: AppStrings.phoneNumber,


                    ),
                    TextButton(onPressed: (){}, child:Text(AppStrings.forgotPassword)),
                    SizedBox(height: 2.h,),
                    SizedBox(height: 2.h,),
                    MainButton(title: AppStrings.createAccount,color: AppColors.primaryColorDark,onPressed: (){},),
                    SizedBox(height: 2.h,),
                    Row(
                      children: [
                        Text(AppStrings.alreadyHaveAnAccount),
                        TextButton(onPressed: (){Navigator.of(context)
                            .pushNamed(AppRoutes.loginScreenRoute);}, child: Text(AppStrings.login))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
