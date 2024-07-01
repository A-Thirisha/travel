import 'package:flutter/material.dart';
import 'package:travel_app/model/place_model.dart';

import '../../../utilities/colors.dart';



class RecomendedCard extends StatelessWidget {
  final PlaceInfo placeInfo;
  final VoidCallback press;
  const RecomendedCard({
    super.key, required this.placeInfo, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:  DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(placeInfo.image))
                    ),
                    
                  
                  ),
              
              
              
                  const SizedBox(
                    height: 820,
                  ),
                  Text(
                    placeInfo.name,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on,
                        color: kPrimaryClr,
                        ),
                        Text(
                          placeInfo.location,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          )
                      ],
                    ),
                        
                ],
              
              ),
            ),   
        
      ),
    ),
    );
  }
}

