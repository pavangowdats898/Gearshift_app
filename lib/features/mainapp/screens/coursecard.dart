import 'package:flutter/material.dart';
import 'package:gearshift/common/widgets/bannerimage.dart';
import 'package:gearshift/utils/constrnts/images_strings.dart';
import 'package:iconsax/iconsax.dart';


class Coursecard extends StatelessWidget {
  const Coursecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
          width: 280,
          height: 130,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.white
            

          ),
          child: Row(
            children: [
              Container(
                width: 180,
                height: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    Text("App Development With Flutter",style: TextStyle(fontSize:18,fontWeight: FontWeight.w600),),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Text("4.7 ",style: TextStyle(fontSize: 13),),
                        Icon(Iconsax.star5,size: 13,),
                        SizedBox(width: 30),
                        Text("550 Learners",style: TextStyle(fontSize: 13)),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                         height: 15,
                         width: 120,
                         color: Colors.blue.shade100,
                         child: Text("vedio letures",textAlign: TextAlign.center,),
                      ),
                    )
                  ],
                ),
                
              ),
              Container(
                height: 130,
                width: 98 ,
                color: Colors.white,
                padding: EdgeInsets.all(0),
                child: Stack(
                  children: [
                    GRoundedImage(imageUrl: GImages.cr1)
                  ],
                ),
              )
            ],
          ), 
       
          
           
    );
  }
}

