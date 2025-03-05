import 'package:flutter/material.dart';
import 'package:flutter_image_carousel_slider/flutter_image_slider.dart';
import 'package:flutter_portfolio/data/project.dart';

// class mobile app view return widget
class MobileAppView extends StatelessWidget {
  
  final Project project;  
  
  const MobileAppView({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Center(
              child: Container(
                width: 250,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Container(
                    color: Colors.grey[900], // Simulating screen content
                    child: Center(
                      child:             // Background Image
            Positioned.fill(
              child:  ImageCarouselSlider(items: project.imageAppUrls,imageHeight: 470,),
            ),
                    ),
                  ),
                ),
              ),
            );
  }

}