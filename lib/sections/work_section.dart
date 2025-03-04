import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/work.dart';
import 'package:flutter_portfolio/widget/StepperView.dart';

class WorkSection extends StatelessWidget {
  
  final List<Work> works; 

   WorkSection({super.key, required this.works});

   @override
   Widget build(BuildContext context) {
      final List<Step> steps = works.map((work) => Step(title: buildTitleView(work), content: buildWorkItem(work) )).toList();
      return StepperView(steps: steps);
   }

   Widget buildTitleView(Work work){
    return Column(
      children: [
        Text(work.company, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        SizedBox(height: 2),
        Text(work.position, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8)),
      ],
    );
   }

  Widget buildWorkItem(Work work){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(work.year, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),), 
      SizedBox(height: 5,),
      ...work.details.map(((detail)=>Text("- $detail")))]);
  }


}