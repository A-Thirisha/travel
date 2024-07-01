import 'package:flutter/material.dart';
import 'package:travel_app/model/place_model.dart';
import 'package:travel_app/screen/home/widgets/recommended_card.dart';
import "package:travel_app/screen/detailscreen/detail_screen.dart";
import 'package:travel_app/screen/home/widgets/category_card.dart';


import 'package:travel_app/utilities/colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icons/home.jpg",
                height: 20,
                width: 20,
                color: kPrimaryClr,
                ),
                Image.asset(
                "assets/icons/calender.webp",
                height: 20,
                width: 20,
                color: Colors.grey,
                ),
                Image.asset(
                "assets/icons/bookmark1.png",
                height: 20,
                width: 20,
                color: Colors.grey,
                ),
                Image.asset(
                "assets/icons/chat-bubble.png",
                height: 20,
                width: 20,
                color: Colors.grey,
                ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(children: [
            //app bar
            Row(
              children: [
                const CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage("assets/icons/alexa.png"),
                ),
                const SizedBox(
                  width: 15,
                ),
                RichText(text: 
                const TextSpan(
                  text: "Hello",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                    ),
                  children: [
                  TextSpan(
                    text: ",Alexa",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
            
                  )
                ]))
              ],
            ),
            //search section
            const SizedBox(
              height: 15,
            ),
            const Text("Explore new destinations",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(100),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(hintText: "Search your destination",
                          prefixIcon: Icon(Icons.search),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          ),
                        
                        
                        ),
                      ),
                      const CircleAvatar(
                        radius: 22,
                        backgroundColor: kPrimaryClr,
                        child: Icon(Icons.sort_by_alpha_sharp,
                        color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //category
            const SizedBox(
              height: 20,
            ),
            const Row(
              children:  [
                Text(
                  "Category",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      CategoryCard(
                        press: (){},
                        image: "assets/images/mountains.jpeg",
                        title: "Mountains",
                      ),
                      CategoryCard(
                        press: (){},
                        image: "assets/images/forests.jpeg",
                        title: "Forests",
                      ),
                      CategoryCard(
                        press: (){},
                        image: "assets/images/sea.webp",
                        title: "Seas",
                      ),
                      CategoryCard(
                        press: (){},
                        image: "assets/images/deserts.jpeg",
                        title: "Deserts",
                      ),
                    ],
                  ),
                ]
              ),
            ),
                
              
            
            //Recommended
            const SizedBox(
              height: 10,
            ),
            const Row(
              children:  [
                Text(
                  "Recommended",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                itemCount: places.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(left: 5, right: 15),
                  child: Row(
                      children: [
                        RecomendedCard(
                          placeInfo: places[index], 
                          press: () { 
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context)=>DetailScreen(
                                  placeInfo: places[index],
                                  )));
                          },
                          )
                      ],
                    ),
                );
            
              }))
            
            
                  ],
              
              
            
                    
                  ),
          ),
        )
        ),
   );
  }
}

