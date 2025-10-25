import 'package:flutter/material.dart';
import 'package:gearshift/common/widgets/bannerimage.dart';
import 'package:gearshift/common/widgets/categories.dart';
import 'package:gearshift/common/widgets/search.dart';
import 'package:gearshift/features/mainapp/screens/coursecard.dart';
import 'package:gearshift/utils/constrnts/images_strings.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Explore",style: TextStyle(fontSize: 24),),automaticallyImplyLeading: false,
      bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0), 
      child: Container(
      color: Colors.grey.shade300, 
      height: 1.0, 
    ),
  ),
  ),
  body: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25,),
        // searchbar
       Searchbar(hintText: 'what do yo want to learn ?',),
        SizedBox(height:5),
        //categories
       Categories(),
       Divider(thickness:8,),
       // banner
       Padding(
         padding: const EdgeInsets.all(15),
         // banner
         child: Column(
            children:[ 
              GRoundedImage(imageUrl: GImages.banner1,applyImageRadius: true,),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Recommended Courses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                  SizedBox(width: 50,)

                
                ],
              ),
              SizedBox(height: 50,),
              Coursecard()

      ]),
         // recommended courses
         
       )


      ],
    ),
  ),
      
    );
  }
}






