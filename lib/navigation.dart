
import 'package:flutter/material.dart';
import 'package:gearshift/features/mainapp/screens/home.dart';
import 'package:gearshift/features/mainapp/screens/mylearning.dart';
import 'package:gearshift/features/mainapp/screens/profile.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Navigationbar extends StatelessWidget {
  const Navigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    
      
      return Scaffold(
     
      bottomNavigationBar: Obx(
        ()=>  NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=>controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "profile"),
            NavigationDestination(icon: Icon(Iconsax.book_square4), label: "My Learning"),
            
        
          ],
          ),
      ),
       body: Obx(()=> controller.screens[controller.selectedIndex.value]),

    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [ const HomeScreen(), const Profile(), const Mylearning()];
}
    
   
  
