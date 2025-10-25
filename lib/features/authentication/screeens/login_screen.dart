

import 'package:flutter/material.dart';
import 'package:gearshift/navigation.dart';
import 'package:gearshift/utils/constrnts/text_strings.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create your account "),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Form(child:
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
              // first name 
              TextFormField(
                decoration: const InputDecoration(labelText: ("First Name"), labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500), border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4))) ),
                 
              ),
              const SizedBox(height: 50,),
              // last name
              TextFormField(
                decoration: InputDecoration(labelText: ("Last Name"),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(3)))),
              ),
              // email address
              const SizedBox(height: 50,),
               TextFormField(
                decoration: InputDecoration(labelText: ("Email Address"),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(3)))),
              ),
              //password
              const SizedBox(height: 50,),
               TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: ("Password"),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(3))),
                suffixIcon: Icon(Iconsax.eye_slash)
                ),
                
              ),
              SizedBox(height: 30,),
              // terms and conditions
              Row(
                children: [
                  // ignore: avoid_types_as_parameter_names
                  SizedBox(width: 24,height: 24,child: Checkbox(value: true, onChanged: (Value) {})),
                  SizedBox(width: 10),
                  Text.rich(
                    TextSpan(children:[
                      TextSpan(text: '${ATexts.iagree} ',style: TextStyle()),
                      
                      TextSpan(text: '${ATexts.gearshift} ',style: TextStyle()),

                      TextSpan(text: ' ${ATexts.tm}',style: TextStyle(decoration: TextDecoration.underline,decorationColor: Colors.blueAccent,fontWeight: FontWeight.w400)),
                    ] )
                    
                  )


                ],
              ),         
               //create account
               SizedBox(height: 80,),
               SizedBox(width: double.infinity,height: 60,child: ElevatedButton(onPressed: () =>Get.to(()=> Navigationbar()), child:Text("Create an Account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),)))
              // already created
              
            ],
          )),
        ),
      ),
    );
  }
}