import 'package:flutter/material.dart';
import 'package:gearshift/features/authentication/screeens/login_screen.dart';
import 'package:gearshift/utils/constrnts/images_strings.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      

      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(2),

        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 28
                ,),
                Image(image: AssetImage(GImages.logo)),
                
                 Image(image: AssetImage(GImages.mainimage)),
                 Padding(
                   padding: const EdgeInsets.only(right: 50,left: 50),
                   child: Text("Learn effortlessly with gearshift",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),


                   
                 ),
                 SizedBox(height: 50,),
                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: SizedBox(width:double.infinity,height: 50,child: ElevatedButton(onPressed: ()=>Get.to(() => LoginScreen()), child:  Row(
                     children: [
                      Image(image: AssetImage(GImages.google,),
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,),
                      SizedBox(width: 10,),
                       Text("CONTINUE WITH GOOGLE",
                       style: TextStyle(fontSize: 24),),
                     ],
                   ),)),
                 ),


                 
                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: SizedBox(width:double.infinity ,height: 50,child: ElevatedButton(onPressed: (){}, child: Text("SIGN UP",style: TextStyle(fontSize: 24),))),
                 ),
              ],
            ),
            
          ],
          
        ),  
        ),

      ),
    );
  }
}