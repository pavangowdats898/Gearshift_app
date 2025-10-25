import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Top Catgories",style: TextStyle(fontSize: 24),textAlign: TextAlign.left,),
          SizedBox(height: 10,),
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: 50,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (_, index){
                return Column(
                  children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                             color: Colors.blue.shade100,
                             borderRadius: BorderRadius.circular(10)
                                        
                          ),
                        ),
                      )
                  ],
            
                );
              }),
          )
        ],
      ),
    );
  }
}