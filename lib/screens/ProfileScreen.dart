
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/dummies.dart';
import 'package:flutter_portfolio/sections/education_section.dart';
import 'package:flutter_portfolio/sections/work_section.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               SizedBox(
                height: 250,
                width: 250,
                child:  CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[300],
                 backgroundImage: AssetImage('assets/images/img_profile_picture_2.jpg'),
                ),
               ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lianda Ramadhana",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                   Text(
                      "Software Engineer (Web and Mobile Frontend)",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.indigoAccent),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(24),
                          child: Column(
                          children: [
                            SvgPicture.asset('assets/icons/ic_social_github.svg',width: 32, height: 32,),
                            SizedBox(height: 5,),
                            Text("liandaraaa",
                            style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsets.all(24),
                          child: Column(
                          children: [
                            SvgPicture.asset('assets/icons/ic_social_email.svg',width: 32, height: 32,),
                            SizedBox(height: 5,),
                            Text("lianda.ramadhana31@gmail.com",
                            style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsets.all(24),
                          child: Column(
                          children: [
                            SvgPicture.asset('assets/icons/ic_social_linkedin.svg',width: 32, height: 32,),
                            SizedBox(height: 5,),
                            Text("liandaramadhana",
                            style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("Address : ",
                        style: TextStyle(color: Colors.indigo),),
                        SizedBox(width: 5,),
                        Text("Jl. H Saleh Sain Blok A No 34, RT 02 RW 06, Pondok Rajeg, Cibinong, Bogor",
                        style: TextStyle(color: Colors.indigo),)
                      ],
                    )
                  ],
                ),
              ],
            ),
             SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(color: Colors.blueAccent),
              padding: EdgeInsets.all(12),
              child: Center(
              child: Text("Work Experience", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
            ),
            ),
            WorkSection(works: getDummyWorks),
             SizedBox(height: 20),
              Container(
              decoration: BoxDecoration(color: Colors.blueAccent),
              padding: EdgeInsets.all(12),
              child: Center(
              child: Text("Education and Organization Experience", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
            ),
            ),
            EducationSection(educations: getDummyEducations)
          ],
        ),
        )
      ),
    );
  }
}