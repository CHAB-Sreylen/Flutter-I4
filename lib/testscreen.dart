import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter layout demo"),
        centerTitle: true,
      ),
      body: const Column(
        children: [
            Image(image:NetworkImage("https://th.bing.com/th/id/R.deab309b0fef8dd28cf1c92ed1172012?rik=5oa5U%2bNqVInJ%2bg&pid=ImgRaw&r=0"),),
            Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Oeschinen Lake Campground",style: TextStyle(fontWeight: FontWeight.w700),),
                        SizedBox(height: 5,),
                        Text("Kandersteg, Switzerland",style: TextStyle(color:Colors.grey),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.red,),
                        SizedBox(width: 4),
                        Text("41"),
                      ],
                    )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60,right: 60),
              // ignore: unnecessary_const
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.phone,color: Colors.purple,),
                      SizedBox(height: 8,),
                      Text("CALL",style: TextStyle(color: Colors.purple,),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.send,color: Colors.purple,),
                      SizedBox(height: 8,),
                      Text("ROUTE",style: TextStyle(color: Colors.purple,),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share,color: Color.fromARGB(255, 111, 26, 126),),
                      SizedBox(height: 8,),
                      Text("SHARE",style: TextStyle(color: Colors.purple,),),
                    ],
                  ),
                  
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text("In order to protect the tranquil natural environment and the wildlife and farm animals at Oeschinen at night, there is a judicial ban on camping in the Oeschinensee region. The fine for non-compliance is up to CHF 2000. The Oeschinensee ranger is on duty every day, including in the evening, on patrols, seeks dialogue and, in extreme cases, calls in the police.", style: TextStyle(fontSize: 14),),
            )
        ],

      ),
    );
  }
}