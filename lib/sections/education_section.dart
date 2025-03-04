import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/education.dart';
import 'package:flutter_portfolio/widget/StepperView.dart';

class EducationSection extends StatelessWidget{
 
  final List<Education> educations;

  const EducationSection({super.key, required this.educations});

  @override
   Widget build(BuildContext context) {
      final List<Step> steps = educations.map((edu) => Step(title: buildTitleView(edu), content: buildWorkItem(edu) )).toList();
      return StepperView(steps: steps);
   }

   Widget buildTitleView(Education edu){
    return Column(
      children: [
        Text(edu.position, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        SizedBox(height: 2),
        Text(edu.university, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8)),
      ],
    );
   }

  Widget buildWorkItem(Education edu){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(edu.year, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),), 
      SizedBox(height: 5,),
      Text(edu.details)
      ]);
  }
}