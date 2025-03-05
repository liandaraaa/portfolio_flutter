import 'package:flutter/material.dart';
import 'package:flutter_image_carousel_slider/flutter_image_slider.dart';
import 'package:flutter_portfolio/data/project.dart';

// class mobile app view return widget
class WebAppView extends StatelessWidget {
  
  final Project project;  
  
  const WebAppView({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Center(
              child: Container(
                width: 500,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 5),
                  // borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Center(
                  child:  Positioned.fill(
              child: ImageCarouselSlider(items: project.imageAppUrls,imageHeight: 280),
            ),
                ),
              ),
            );
  }

}