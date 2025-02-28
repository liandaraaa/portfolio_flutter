import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/education.dart';

class EducationSection extends StatelessWidget{
 
  final List<Education> educations;

  const EducationSection({required this.educations}):super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: educations.map((edu) => 
        buildEducationItem(edu.degree, edu.university, edu.year, edu.location, edu.details)
      ).toList(),
    );
  }

  Widget buildEducationItem(String degree, String university, String year, String location, String details){
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$degree - $university", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text("$year | $location", style: TextStyle(color: Colors.grey[700])),
            SizedBox(height: 5),
            Text(details),
          ],
        ),
      ),
    );
  }
}